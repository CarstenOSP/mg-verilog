module bicg_bicg_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_0_address0,v137_0_ce0,v137_0_q0,v137_0_address1,v137_0_ce1,v137_0_q1,v137_1_address0,v137_1_ce0,v137_1_q0,v137_1_address1,v137_1_ce1,v137_1_q1,v137_2_address0,v137_2_ce0,v137_2_q0,v137_2_address1,v137_2_ce1,v137_2_q1,v137_3_address0,v137_3_ce0,v137_3_q0,v137_3_address1,v137_3_ce1,v137_3_q1,v139_address0,v139_ce0,v139_q0,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v137_0_address0;
output   v137_0_ce0;
input  [31:0] v137_0_q0;
output  [9:0] v137_0_address1;
output   v137_0_ce1;
input  [31:0] v137_0_q1;
output  [9:0] v137_1_address0;
output   v137_1_ce0;
input  [31:0] v137_1_q0;
output  [9:0] v137_1_address1;
output   v137_1_ce1;
input  [31:0] v137_1_q1;
output  [9:0] v137_2_address0;
output   v137_2_ce0;
input  [31:0] v137_2_q0;
output  [9:0] v137_2_address1;
output   v137_2_ce1;
input  [31:0] v137_2_q1;
output  [9:0] v137_3_address0;
output   v137_3_ce0;
input  [31:0] v137_3_q0;
output  [9:0] v137_3_address1;
output   v137_3_ce1;
input  [31:0] v137_3_q1;
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [4:0] v10_0_address0;
output   v10_0_ce0;
output   v10_0_we0;
output  [31:0] v10_0_d0;
input  [31:0] v10_0_q0;
output  [4:0] v10_0_address1;
output   v10_0_ce1;
output   v10_0_we1;
output  [31:0] v10_0_d1;
input  [31:0] v10_0_q1;
output  [4:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [31:0] v10_1_d0;
input  [31:0] v10_1_q0;
output  [4:0] v10_1_address1;
output   v10_1_ce1;
output   v10_1_we1;
output  [31:0] v10_1_d1;
input  [31:0] v10_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln41_reg_1242;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_509_p2;
reg   [31:0] reg_553;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_513_p2;
reg   [31:0] reg_558;
wire   [0:0] icmp_ln41_fu_581_p2;
wire   [6:0] select_ln41_fu_613_p3;
reg   [6:0] select_ln41_reg_1246;
wire   [3:0] trunc_ln41_1_fu_638_p1;
reg   [3:0] trunc_ln41_1_reg_1251;
reg   [1:0] trunc_ln41_2_reg_1261;
wire   [0:0] cmp7_fu_652_p2;
reg   [0:0] cmp7_reg_1273;
reg   [0:0] cmp7_reg_1273_pp0_iter1_reg;
wire   [4:0] lshr_ln_fu_674_p4;
reg   [4:0] lshr_ln_reg_1306;
reg   [3:0] tmp_11_reg_1331;
wire   [0:0] trunc_ln58_fu_712_p1;
reg   [0:0] trunc_ln58_reg_1338;
reg   [2:0] tmp_14_reg_1344;
wire   [1:0] trunc_ln72_fu_726_p1;
reg   [1:0] trunc_ln72_reg_1354;
reg   [0:0] tmp_6_reg_1359;
wire   [31:0] v17_fu_748_p1;
reg   [31:0] v17_reg_1365;
wire   [31:0] v16_fu_768_p11;
reg   [31:0] v16_reg_1371;
wire   [31:0] v23_fu_807_p11;
reg   [31:0] v23_reg_1376;
wire   [31:0] v29_fu_879_p11;
reg   [31:0] v29_reg_1421;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v35_fu_918_p11;
reg   [31:0] v35_reg_1426;
reg   [4:0] v10_0_addr_reg_1471;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] v10_0_addr_reg_1471_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_1471_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_1476;
reg   [4:0] v10_1_addr_reg_1476_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_1476_pp0_iter3_reg;
reg   [4:0] v10_0_addr_1_reg_1481;
reg   [4:0] v10_0_addr_1_reg_1481_pp0_iter2_reg;
reg   [4:0] v10_0_addr_1_reg_1481_pp0_iter3_reg;
reg   [4:0] v10_1_addr_1_reg_1487;
reg   [4:0] v10_1_addr_1_reg_1487_pp0_iter2_reg;
reg   [4:0] v10_1_addr_1_reg_1487_pp0_iter3_reg;
wire   [31:0] v41_fu_1011_p11;
reg   [31:0] v41_reg_1493;
wire   [31:0] v47_fu_1050_p11;
reg   [31:0] v47_reg_1498;
wire   [31:0] grp_fu_525_p3;
reg   [31:0] v15_reg_1543;
reg   [4:0] v10_0_addr_2_reg_1548;
reg   [4:0] v10_0_addr_2_reg_1548_pp0_iter2_reg;
reg   [4:0] v10_0_addr_2_reg_1548_pp0_iter3_reg;
reg   [4:0] v10_0_addr_2_reg_1548_pp0_iter4_reg;
reg   [4:0] v10_1_addr_2_reg_1554;
reg   [4:0] v10_1_addr_2_reg_1554_pp0_iter2_reg;
reg   [4:0] v10_1_addr_2_reg_1554_pp0_iter3_reg;
reg   [4:0] v10_1_addr_2_reg_1554_pp0_iter4_reg;
reg   [4:0] v10_0_addr_3_reg_1560;
reg   [4:0] v10_0_addr_3_reg_1560_pp0_iter2_reg;
reg   [4:0] v10_0_addr_3_reg_1560_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_1560_pp0_iter4_reg;
wire   [31:0] v53_fu_1159_p11;
reg   [31:0] v53_reg_1565;
reg   [4:0] v10_1_addr_3_reg_1570;
reg   [4:0] v10_1_addr_3_reg_1570_pp0_iter2_reg;
reg   [4:0] v10_1_addr_3_reg_1570_pp0_iter3_reg;
reg   [4:0] v10_1_addr_3_reg_1570_pp0_iter4_reg;
wire   [31:0] v59_fu_1198_p11;
reg   [31:0] v59_reg_1575;
wire   [31:0] grp_fu_532_p3;
reg   [31:0] v22_reg_1580;
wire   [31:0] grp_fu_539_p3;
reg   [31:0] v28_reg_1585;
wire   [31:0] grp_fu_546_p3;
reg   [31:0] v34_reg_1590;
wire   [31:0] grp_fu_517_p2;
reg   [31:0] v18_reg_1595;
wire   [31:0] grp_fu_521_p2;
reg   [31:0] v24_reg_1600;
reg   [31:0] v40_reg_1605;
reg   [31:0] v46_reg_1610;
reg   [31:0] v52_reg_1615;
reg   [31:0] v58_reg_1620;
reg   [31:0] v30_reg_1625;
reg   [31:0] v36_reg_1630;
reg   [31:0] v42_reg_1635;
reg   [31:0] v48_reg_1640;
reg   [31:0] v54_reg_1645;
reg   [31:0] v60_reg_1650;
reg   [31:0] v43_reg_1655;
reg   [31:0] v49_reg_1660;
reg   [31:0] v55_reg_1665;
reg   [31:0] v61_reg_1670;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln41_fu_633_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln46_fu_666_p1;
wire   [63:0] zext_ln54_fu_694_p1;
wire   [63:0] zext_ln61_fu_839_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln68_fu_855_p1;
wire   [63:0] zext_ln75_fu_950_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln82_fu_969_p1;
wire   [63:0] zext_ln42_fu_977_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln59_fu_989_p1;
wire   [63:0] zext_ln89_fu_1082_p1;
wire   [63:0] zext_ln96_fu_1098_p1;
wire   [63:0] zext_ln73_fu_1124_p1;
wire   [63:0] zext_ln87_fu_1137_p1;
reg   [6:0] v12_fu_110;
wire   [6:0] add_ln42_fu_1106_p2;
wire    ap_loop_init;
reg   [6:0] v11_fu_114;
wire   [6:0] select_ln41_1_fu_625_p3;
reg   [9:0] indvar_flatten_fu_118;
wire   [9:0] add_ln41_1_fu_587_p2;
reg    v139_ce0_local;
reg    v137_0_ce1_local;
reg   [9:0] v137_0_address1_local;
reg    v137_0_ce0_local;
reg   [9:0] v137_0_address0_local;
reg    v137_1_ce1_local;
reg   [9:0] v137_1_address1_local;
reg    v137_1_ce0_local;
reg   [9:0] v137_1_address0_local;
reg    v137_2_ce1_local;
reg   [9:0] v137_2_address1_local;
reg    v137_2_ce0_local;
reg   [9:0] v137_2_address0_local;
reg    v137_3_ce1_local;
reg   [9:0] v137_3_address1_local;
reg    v137_3_ce0_local;
reg   [9:0] v137_3_address0_local;
reg    v10_0_ce1_local;
reg   [4:0] v10_0_address1_local;
reg    v10_0_ce0_local;
reg   [4:0] v10_0_address0_local;
reg    v10_0_we1_local;
reg    v10_0_we0_local;
reg   [31:0] v10_0_d0_local;
reg    v10_1_ce1_local;
reg   [4:0] v10_1_address1_local;
reg    v10_1_ce0_local;
reg   [4:0] v10_1_address0_local;
reg    v10_1_we1_local;
reg    v10_1_we0_local;
reg   [31:0] v10_1_d0_local;
reg   [31:0] grp_fu_509_p0;
reg   [31:0] grp_fu_509_p1;
reg   [31:0] grp_fu_513_p0;
reg   [31:0] grp_fu_513_p1;
reg   [31:0] grp_fu_517_p0;
reg   [31:0] grp_fu_521_p0;
reg   [0:0] grp_fu_525_p0;
reg   [0:0] grp_fu_532_p0;
reg   [0:0] grp_fu_539_p0;
reg   [0:0] grp_fu_546_p0;
wire   [0:0] tmp_5_fu_605_p3;
wire   [6:0] add_ln41_fu_599_p2;
wire   [5:0] trunc_ln41_fu_621_p1;
wire   [9:0] tmp_fu_658_p3;
wire   [9:0] tmp_s_fu_684_p4;
wire   [31:0] v16_fu_768_p2;
wire   [31:0] v16_fu_768_p4;
wire   [31:0] v16_fu_768_p6;
wire   [31:0] v16_fu_768_p8;
wire   [31:0] v16_fu_768_p9;
wire   [31:0] v23_fu_807_p2;
wire   [31:0] v23_fu_807_p4;
wire   [31:0] v23_fu_807_p6;
wire   [31:0] v23_fu_807_p8;
wire   [31:0] v23_fu_807_p9;
wire   [9:0] tmp_12_fu_830_p5;
wire   [9:0] tmp_13_fu_847_p4;
wire   [31:0] v29_fu_879_p2;
wire   [31:0] v29_fu_879_p4;
wire   [31:0] v29_fu_879_p6;
wire   [31:0] v29_fu_879_p8;
wire   [31:0] v29_fu_879_p9;
wire   [31:0] v35_fu_918_p2;
wire   [31:0] v35_fu_918_p4;
wire   [31:0] v35_fu_918_p6;
wire   [31:0] v35_fu_918_p8;
wire   [31:0] v35_fu_918_p9;
wire   [9:0] tmp_15_fu_941_p5;
wire   [9:0] tmp_16_fu_958_p6;
wire   [4:0] or_ln58_1_fu_982_p3;
wire   [31:0] v41_fu_1011_p2;
wire   [31:0] v41_fu_1011_p4;
wire   [31:0] v41_fu_1011_p6;
wire   [31:0] v41_fu_1011_p8;
wire   [31:0] v41_fu_1011_p9;
wire   [31:0] v47_fu_1050_p2;
wire   [31:0] v47_fu_1050_p4;
wire   [31:0] v47_fu_1050_p6;
wire   [31:0] v47_fu_1050_p8;
wire   [31:0] v47_fu_1050_p9;
wire   [9:0] tmp_17_fu_1073_p5;
wire   [9:0] tmp_18_fu_1090_p4;
wire   [4:0] or_ln72_1_fu_1116_p4;
wire   [4:0] or_ln86_1_fu_1130_p3;
wire   [31:0] v53_fu_1159_p2;
wire   [31:0] v53_fu_1159_p4;
wire   [31:0] v53_fu_1159_p6;
wire   [31:0] v53_fu_1159_p8;
wire   [31:0] v53_fu_1159_p9;
wire   [31:0] v59_fu_1198_p2;
wire   [31:0] v59_fu_1198_p4;
wire   [31:0] v59_fu_1198_p6;
wire   [31:0] v59_fu_1198_p8;
wire   [31:0] v59_fu_1198_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v16_fu_768_p1;
wire   [1:0] v16_fu_768_p3;
wire  signed [1:0] v16_fu_768_p5;
wire  signed [1:0] v16_fu_768_p7;
wire   [1:0] v23_fu_807_p1;
wire   [1:0] v23_fu_807_p3;
wire  signed [1:0] v23_fu_807_p5;
wire  signed [1:0] v23_fu_807_p7;
wire   [1:0] v29_fu_879_p1;
wire   [1:0] v29_fu_879_p3;
wire  signed [1:0] v29_fu_879_p5;
wire  signed [1:0] v29_fu_879_p7;
wire   [1:0] v35_fu_918_p1;
wire   [1:0] v35_fu_918_p3;
wire  signed [1:0] v35_fu_918_p5;
wire  signed [1:0] v35_fu_918_p7;
wire   [1:0] v41_fu_1011_p1;
wire   [1:0] v41_fu_1011_p3;
wire  signed [1:0] v41_fu_1011_p5;
wire  signed [1:0] v41_fu_1011_p7;
wire   [1:0] v47_fu_1050_p1;
wire   [1:0] v47_fu_1050_p3;
wire  signed [1:0] v47_fu_1050_p5;
wire  signed [1:0] v47_fu_1050_p7;
wire   [1:0] v53_fu_1159_p1;
wire   [1:0] v53_fu_1159_p3;
wire  signed [1:0] v53_fu_1159_p5;
wire  signed [1:0] v53_fu_1159_p7;
wire   [1:0] v59_fu_1198_p1;
wire   [1:0] v59_fu_1198_p3;
wire  signed [1:0] v59_fu_1198_p5;
wire  signed [1:0] v59_fu_1198_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_110 = 7'd0;
#0 v11_fu_114 = 7'd0;
#0 indvar_flatten_fu_118 = 10'd0;
#0 ap_done_reg = 1'b0;
end
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_509_p0),.din1(grp_fu_509_p1),.ce(1'b1),.dout(grp_fu_509_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_513_p0),.din1(grp_fu_513_p1),.ce(1'b1),.dout(grp_fu_513_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_517_p0),.din1(v17_reg_1365),.ce(1'b1),.dout(grp_fu_517_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_521_p0),.din1(v17_reg_1365),.ce(1'b1),.dout(grp_fu_521_p2));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U15(.din0(v16_fu_768_p2),.din1(v16_fu_768_p4),.din2(v16_fu_768_p6),.din3(v16_fu_768_p8),.def(v16_fu_768_p9),.sel(trunc_ln41_2_reg_1261),.dout(v16_fu_768_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U16(.din0(v23_fu_807_p2),.din1(v23_fu_807_p4),.din2(v23_fu_807_p6),.din3(v23_fu_807_p8),.def(v23_fu_807_p9),.sel(trunc_ln41_2_reg_1261),.dout(v23_fu_807_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U17(.din0(v29_fu_879_p2),.din1(v29_fu_879_p4),.din2(v29_fu_879_p6),.din3(v29_fu_879_p8),.def(v29_fu_879_p9),.sel(trunc_ln41_2_reg_1261),.dout(v29_fu_879_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U18(.din0(v35_fu_918_p2),.din1(v35_fu_918_p4),.din2(v35_fu_918_p6),.din3(v35_fu_918_p8),.def(v35_fu_918_p9),.sel(trunc_ln41_2_reg_1261),.dout(v35_fu_918_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U19(.din0(v41_fu_1011_p2),.din1(v41_fu_1011_p4),.din2(v41_fu_1011_p6),.din3(v41_fu_1011_p8),.def(v41_fu_1011_p9),.sel(trunc_ln41_2_reg_1261),.dout(v41_fu_1011_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U20(.din0(v47_fu_1050_p2),.din1(v47_fu_1050_p4),.din2(v47_fu_1050_p6),.din3(v47_fu_1050_p8),.def(v47_fu_1050_p9),.sel(trunc_ln41_2_reg_1261),.dout(v47_fu_1050_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U21(.din0(v53_fu_1159_p2),.din1(v53_fu_1159_p4),.din2(v53_fu_1159_p6),.din3(v53_fu_1159_p8),.def(v53_fu_1159_p9),.sel(trunc_ln41_2_reg_1261),.dout(v53_fu_1159_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U22(.din0(v59_fu_1198_p2),.din1(v59_fu_1198_p4),.din2(v59_fu_1198_p6),.din3(v59_fu_1198_p8),.def(v59_fu_1198_p9),.sel(trunc_ln41_2_reg_1261),.dout(v59_fu_1198_p11));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_118 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln41_fu_581_p2 == 1'd0))) begin
        indvar_flatten_fu_118 <= add_ln41_1_fu_587_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11_fu_114 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln41_fu_581_p2 == 1'd0))) begin
        v11_fu_114 <= select_ln41_1_fu_625_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v12_fu_110 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v12_fu_110 <= add_ln42_fu_1106_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        v29_reg_1421 <= v29_fu_879_p11;
        v35_reg_1426 <= v35_fu_918_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1273 <= cmp7_fu_652_p2;
        cmp7_reg_1273_pp0_iter1_reg <= cmp7_reg_1273;
        icmp_ln41_reg_1242 <= icmp_ln41_fu_581_p2;
        lshr_ln_reg_1306 <= {{select_ln41_fu_613_p3[5:1]}};
        select_ln41_reg_1246 <= select_ln41_fu_613_p3;
        tmp_11_reg_1331 <= {{select_ln41_fu_613_p3[5:2]}};
        tmp_14_reg_1344 <= {{select_ln41_fu_613_p3[5:3]}};
        tmp_6_reg_1359 <= select_ln41_fu_613_p3[32'd1];
        trunc_ln41_1_reg_1251 <= trunc_ln41_1_fu_638_p1;
        trunc_ln41_2_reg_1261 <= {{select_ln41_1_fu_625_p3[5:4]}};
        trunc_ln58_reg_1338 <= trunc_ln58_fu_712_p1;
        trunc_ln72_reg_1354 <= trunc_ln72_fu_726_p1;
        v10_0_addr_2_reg_1548[0] <= zext_ln73_fu_1124_p1[0];
v10_0_addr_2_reg_1548[4 : 2] <= zext_ln73_fu_1124_p1[4 : 2];
        v10_0_addr_2_reg_1548_pp0_iter2_reg[0] <= v10_0_addr_2_reg_1548[0];
v10_0_addr_2_reg_1548_pp0_iter2_reg[4 : 2] <= v10_0_addr_2_reg_1548[4 : 2];
        v10_0_addr_2_reg_1548_pp0_iter3_reg[0] <= v10_0_addr_2_reg_1548_pp0_iter2_reg[0];
v10_0_addr_2_reg_1548_pp0_iter3_reg[4 : 2] <= v10_0_addr_2_reg_1548_pp0_iter2_reg[4 : 2];
        v10_0_addr_2_reg_1548_pp0_iter4_reg[0] <= v10_0_addr_2_reg_1548_pp0_iter3_reg[0];
v10_0_addr_2_reg_1548_pp0_iter4_reg[4 : 2] <= v10_0_addr_2_reg_1548_pp0_iter3_reg[4 : 2];
        v10_0_addr_3_reg_1560[4 : 2] <= zext_ln87_fu_1137_p1[4 : 2];
        v10_0_addr_3_reg_1560_pp0_iter2_reg[4 : 2] <= v10_0_addr_3_reg_1560[4 : 2];
        v10_0_addr_3_reg_1560_pp0_iter3_reg[4 : 2] <= v10_0_addr_3_reg_1560_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_1560_pp0_iter4_reg[4 : 2] <= v10_0_addr_3_reg_1560_pp0_iter3_reg[4 : 2];
        v10_1_addr_2_reg_1554[0] <= zext_ln73_fu_1124_p1[0];
v10_1_addr_2_reg_1554[4 : 2] <= zext_ln73_fu_1124_p1[4 : 2];
        v10_1_addr_2_reg_1554_pp0_iter2_reg[0] <= v10_1_addr_2_reg_1554[0];
v10_1_addr_2_reg_1554_pp0_iter2_reg[4 : 2] <= v10_1_addr_2_reg_1554[4 : 2];
        v10_1_addr_2_reg_1554_pp0_iter3_reg[0] <= v10_1_addr_2_reg_1554_pp0_iter2_reg[0];
v10_1_addr_2_reg_1554_pp0_iter3_reg[4 : 2] <= v10_1_addr_2_reg_1554_pp0_iter2_reg[4 : 2];
        v10_1_addr_2_reg_1554_pp0_iter4_reg[0] <= v10_1_addr_2_reg_1554_pp0_iter3_reg[0];
v10_1_addr_2_reg_1554_pp0_iter4_reg[4 : 2] <= v10_1_addr_2_reg_1554_pp0_iter3_reg[4 : 2];
        v10_1_addr_3_reg_1570[4 : 2] <= zext_ln87_fu_1137_p1[4 : 2];
        v10_1_addr_3_reg_1570_pp0_iter2_reg[4 : 2] <= v10_1_addr_3_reg_1570[4 : 2];
        v10_1_addr_3_reg_1570_pp0_iter3_reg[4 : 2] <= v10_1_addr_3_reg_1570_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_1570_pp0_iter4_reg[4 : 2] <= v10_1_addr_3_reg_1570_pp0_iter3_reg[4 : 2];
        v53_reg_1565 <= v53_fu_1159_p11;
        v59_reg_1575 <= v59_fu_1198_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_553 <= grp_fu_509_p2;
        reg_558 <= grp_fu_513_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_addr_1_reg_1481[4 : 1] <= zext_ln59_fu_989_p1[4 : 1];
        v10_0_addr_1_reg_1481_pp0_iter2_reg[4 : 1] <= v10_0_addr_1_reg_1481[4 : 1];
        v10_0_addr_1_reg_1481_pp0_iter3_reg[4 : 1] <= v10_0_addr_1_reg_1481_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_1471 <= zext_ln42_fu_977_p1;
        v10_0_addr_reg_1471_pp0_iter2_reg <= v10_0_addr_reg_1471;
        v10_0_addr_reg_1471_pp0_iter3_reg <= v10_0_addr_reg_1471_pp0_iter2_reg;
        v10_1_addr_1_reg_1487[4 : 1] <= zext_ln59_fu_989_p1[4 : 1];
        v10_1_addr_1_reg_1487_pp0_iter2_reg[4 : 1] <= v10_1_addr_1_reg_1487[4 : 1];
        v10_1_addr_1_reg_1487_pp0_iter3_reg[4 : 1] <= v10_1_addr_1_reg_1487_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_1476 <= zext_ln42_fu_977_p1;
        v10_1_addr_reg_1476_pp0_iter2_reg <= v10_1_addr_reg_1476;
        v10_1_addr_reg_1476_pp0_iter3_reg <= v10_1_addr_reg_1476_pp0_iter2_reg;
        v41_reg_1493 <= v41_fu_1011_p11;
        v47_reg_1498 <= v47_fu_1050_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v15_reg_1543 <= grp_fu_525_p3;
        v22_reg_1580 <= grp_fu_532_p3;
        v28_reg_1585 <= grp_fu_539_p3;
        v34_reg_1590 <= grp_fu_546_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v16_reg_1371 <= v16_fu_768_p11;
        v17_reg_1365 <= v17_fu_748_p1;
        v23_reg_1376 <= v23_fu_807_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v18_reg_1595 <= grp_fu_517_p2;
        v24_reg_1600 <= grp_fu_521_p2;
        v40_reg_1605 <= grp_fu_525_p3;
        v46_reg_1610 <= grp_fu_532_p3;
        v52_reg_1615 <= grp_fu_539_p3;
        v58_reg_1620 <= grp_fu_546_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v30_reg_1625 <= grp_fu_517_p2;
        v36_reg_1630 <= grp_fu_521_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v42_reg_1635 <= grp_fu_517_p2;
        v48_reg_1640 <= grp_fu_521_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v43_reg_1655 <= grp_fu_509_p2;
        v49_reg_1660 <= grp_fu_513_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v54_reg_1645 <= grp_fu_517_p2;
        v60_reg_1650 <= grp_fu_521_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v55_reg_1665 <= grp_fu_509_p2;
        v61_reg_1670 <= grp_fu_513_p2;
    end
end
always @ (*) begin
    if (((icmp_ln41_reg_1242 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_509_p0 = v52_reg_1615;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_509_p0 = v40_reg_1605;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_509_p0 = v28_reg_1585;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_509_p0 = v15_reg_1543;
    end else begin
        grp_fu_509_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_509_p1 = v54_reg_1645;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_509_p1 = v42_reg_1635;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_509_p1 = v30_reg_1625;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_509_p1 = v18_reg_1595;
    end else begin
        grp_fu_509_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_513_p0 = v58_reg_1620;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_513_p0 = v46_reg_1610;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_513_p0 = v34_reg_1590;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_513_p0 = v22_reg_1580;
    end else begin
        grp_fu_513_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_513_p1 = v60_reg_1650;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_513_p1 = v48_reg_1640;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_513_p1 = v36_reg_1630;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_513_p1 = v24_reg_1600;
    end else begin
        grp_fu_513_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_517_p0 = v53_reg_1565;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_517_p0 = v41_reg_1493;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_517_p0 = v29_reg_1421;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_517_p0 = v16_reg_1371;
    end else begin
        grp_fu_517_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_521_p0 = v59_reg_1575;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_521_p0 = v47_reg_1498;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_521_p0 = v35_reg_1426;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_521_p0 = v23_reg_1376;
    end else begin
        grp_fu_521_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_525_p0 = cmp7_reg_1273_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_525_p0 = cmp7_reg_1273;
        end else begin
            grp_fu_525_p0 = 'bx;
        end
    end else begin
        grp_fu_525_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_532_p0 = cmp7_reg_1273_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_532_p0 = cmp7_reg_1273;
        end else begin
            grp_fu_532_p0 = 'bx;
        end
    end else begin
        grp_fu_532_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_539_p0 = cmp7_reg_1273_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_539_p0 = cmp7_reg_1273;
        end else begin
            grp_fu_539_p0 = 'bx;
        end
    end else begin
        grp_fu_539_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_546_p0 = cmp7_reg_1273_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_546_p0 = cmp7_reg_1273;
        end else begin
            grp_fu_546_p0 = 'bx;
        end
    end else begin
        grp_fu_546_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_3_reg_1560_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_2_reg_1548_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_1137_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_989_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_1_reg_1481_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_1471_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_1124_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_977_p1;
    end else begin
        v10_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce0_local = 1'b1;
    end else begin
        v10_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce1_local = 1'b1;
    end else begin
        v10_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v10_0_d0_local = v55_reg_1665;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v10_0_d0_local = v43_reg_1655;
        end else begin
            v10_0_d0_local = 'bx;
        end
    end else begin
        v10_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we0_local = 1'b1;
    end else begin
        v10_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we1_local = 1'b1;
    end else begin
        v10_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address0_local = v10_1_addr_3_reg_1570_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_2_reg_1554_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_1137_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_989_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_1_reg_1487_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_1476_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_1124_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_977_p1;
    end else begin
        v10_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce1_local = 1'b1;
    end else begin
        v10_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v10_1_d0_local = v61_reg_1670;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v10_1_d0_local = v49_reg_1660;
        end else begin
            v10_1_d0_local = 'bx;
        end
    end else begin
        v10_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we1_local = 1'b1;
    end else begin
        v10_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_0_address0_local = zext_ln96_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_0_address0_local = zext_ln82_fu_969_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_0_address0_local = zext_ln68_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_0_address0_local = zext_ln54_fu_694_p1;
    end else begin
        v137_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_0_address1_local = zext_ln89_fu_1082_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_0_address1_local = zext_ln75_fu_950_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_0_address1_local = zext_ln61_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_0_address1_local = zext_ln46_fu_666_p1;
    end else begin
        v137_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_0_ce0_local = 1'b1;
    end else begin
        v137_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_0_ce1_local = 1'b1;
    end else begin
        v137_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_1_address0_local = zext_ln96_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_1_address0_local = zext_ln82_fu_969_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_1_address0_local = zext_ln68_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_1_address0_local = zext_ln54_fu_694_p1;
    end else begin
        v137_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_1_address1_local = zext_ln89_fu_1082_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_1_address1_local = zext_ln75_fu_950_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_1_address1_local = zext_ln61_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_1_address1_local = zext_ln46_fu_666_p1;
    end else begin
        v137_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_1_ce0_local = 1'b1;
    end else begin
        v137_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_1_ce1_local = 1'b1;
    end else begin
        v137_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_2_address0_local = zext_ln96_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_2_address0_local = zext_ln82_fu_969_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_2_address0_local = zext_ln68_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_2_address0_local = zext_ln54_fu_694_p1;
    end else begin
        v137_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_2_address1_local = zext_ln89_fu_1082_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_2_address1_local = zext_ln75_fu_950_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_2_address1_local = zext_ln61_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_2_address1_local = zext_ln46_fu_666_p1;
    end else begin
        v137_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_2_ce0_local = 1'b1;
    end else begin
        v137_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_2_ce1_local = 1'b1;
    end else begin
        v137_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_3_address0_local = zext_ln96_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_3_address0_local = zext_ln82_fu_969_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_3_address0_local = zext_ln68_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_3_address0_local = zext_ln54_fu_694_p1;
    end else begin
        v137_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_3_address1_local = zext_ln89_fu_1082_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_3_address1_local = zext_ln75_fu_950_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_3_address1_local = zext_ln61_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_3_address1_local = zext_ln46_fu_666_p1;
    end else begin
        v137_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_3_ce0_local = 1'b1;
    end else begin
        v137_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_3_ce1_local = 1'b1;
    end else begin
        v137_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v139_ce0_local = 1'b1;
    end else begin
        v139_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln41_1_fu_587_p2 = (indvar_flatten_fu_118 + 10'd1);
assign add_ln41_fu_599_p2 = (v11_fu_114 + 7'd1);
assign add_ln42_fu_1106_p2 = (select_ln41_reg_1246 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign cmp7_fu_652_p2 = ((select_ln41_1_fu_625_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_525_p3 = ((grp_fu_525_p0[0:0] == 1'b1) ? 32'd0 : v10_0_q1);
assign grp_fu_532_p3 = ((grp_fu_532_p0[0:0] == 1'b1) ? 32'd0 : v10_1_q1);
assign grp_fu_539_p3 = ((grp_fu_539_p0[0:0] == 1'b1) ? 32'd0 : v10_0_q0);
assign grp_fu_546_p3 = ((grp_fu_546_p0[0:0] == 1'b1) ? 32'd0 : v10_1_q0);
assign icmp_ln41_fu_581_p2 = ((indvar_flatten_fu_118 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln_fu_674_p4 = {{select_ln41_fu_613_p3[5:1]}};
assign or_ln58_1_fu_982_p3 = {{tmp_11_reg_1331}, {1'd1}};
assign or_ln72_1_fu_1116_p4 = {{{tmp_14_reg_1344}, {1'd1}}, {tmp_6_reg_1359}};
assign or_ln86_1_fu_1130_p3 = {{tmp_14_reg_1344}, {2'd3}};
assign select_ln41_1_fu_625_p3 = ((tmp_5_fu_605_p3[0:0] == 1'b1) ? add_ln41_fu_599_p2 : v11_fu_114);
assign select_ln41_fu_613_p3 = ((tmp_5_fu_605_p3[0:0] == 1'b1) ? 7'd0 : v12_fu_110);
assign tmp_12_fu_830_p5 = {{{{tmp_11_reg_1331}, {1'd1}}, {trunc_ln58_reg_1338}}, {trunc_ln41_1_reg_1251}};
assign tmp_13_fu_847_p4 = {{{tmp_11_reg_1331}, {2'd3}}, {trunc_ln41_1_reg_1251}};
assign tmp_15_fu_941_p5 = {{{{tmp_14_reg_1344}, {1'd1}}, {trunc_ln72_reg_1354}}, {trunc_ln41_1_reg_1251}};
assign tmp_16_fu_958_p6 = {{{{{tmp_14_reg_1344}, {1'd1}}, {tmp_6_reg_1359}}, {1'd1}}, {trunc_ln41_1_reg_1251}};
assign tmp_17_fu_1073_p5 = {{{{tmp_14_reg_1344}, {2'd3}}, {trunc_ln58_reg_1338}}, {trunc_ln41_1_reg_1251}};
assign tmp_18_fu_1090_p4 = {{{tmp_14_reg_1344}, {3'd7}}, {trunc_ln41_1_reg_1251}};
assign tmp_5_fu_605_p3 = v12_fu_110[32'd6];
assign tmp_fu_658_p3 = {{trunc_ln41_fu_621_p1}, {trunc_ln41_1_fu_638_p1}};
assign tmp_s_fu_684_p4 = {{{lshr_ln_fu_674_p4}, {1'd1}}, {trunc_ln41_1_fu_638_p1}};
assign trunc_ln41_1_fu_638_p1 = select_ln41_1_fu_625_p3[3:0];
assign trunc_ln41_fu_621_p1 = select_ln41_fu_613_p3[5:0];
assign trunc_ln58_fu_712_p1 = select_ln41_fu_613_p3[0:0];
assign trunc_ln72_fu_726_p1 = select_ln41_fu_613_p3[1:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_553;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_558;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_0_address0 = v137_0_address0_local;
assign v137_0_address1 = v137_0_address1_local;
assign v137_0_ce0 = v137_0_ce0_local;
assign v137_0_ce1 = v137_0_ce1_local;
assign v137_1_address0 = v137_1_address0_local;
assign v137_1_address1 = v137_1_address1_local;
assign v137_1_ce0 = v137_1_ce0_local;
assign v137_1_ce1 = v137_1_ce1_local;
assign v137_2_address0 = v137_2_address0_local;
assign v137_2_address1 = v137_2_address1_local;
assign v137_2_ce0 = v137_2_ce0_local;
assign v137_2_ce1 = v137_2_ce1_local;
assign v137_3_address0 = v137_3_address0_local;
assign v137_3_address1 = v137_3_address1_local;
assign v137_3_ce0 = v137_3_ce0_local;
assign v137_3_ce1 = v137_3_ce1_local;
assign v139_address0 = zext_ln41_fu_633_p1;
assign v139_ce0 = v139_ce0_local;
assign v16_fu_768_p2 = v137_0_q1;
assign v16_fu_768_p4 = v137_1_q1;
assign v16_fu_768_p6 = v137_2_q1;
assign v16_fu_768_p8 = v137_3_q1;
assign v16_fu_768_p9 = 'bx;
assign v17_fu_748_p1 = v139_q0;
assign v23_fu_807_p2 = v137_0_q0;
assign v23_fu_807_p4 = v137_1_q0;
assign v23_fu_807_p6 = v137_2_q0;
assign v23_fu_807_p8 = v137_3_q0;
assign v23_fu_807_p9 = 'bx;
assign v29_fu_879_p2 = v137_0_q1;
assign v29_fu_879_p4 = v137_1_q1;
assign v29_fu_879_p6 = v137_2_q1;
assign v29_fu_879_p8 = v137_3_q1;
assign v29_fu_879_p9 = 'bx;
assign v35_fu_918_p2 = v137_0_q0;
assign v35_fu_918_p4 = v137_1_q0;
assign v35_fu_918_p6 = v137_2_q0;
assign v35_fu_918_p8 = v137_3_q0;
assign v35_fu_918_p9 = 'bx;
assign v41_fu_1011_p2 = v137_0_q1;
assign v41_fu_1011_p4 = v137_1_q1;
assign v41_fu_1011_p6 = v137_2_q1;
assign v41_fu_1011_p8 = v137_3_q1;
assign v41_fu_1011_p9 = 'bx;
assign v47_fu_1050_p2 = v137_0_q0;
assign v47_fu_1050_p4 = v137_1_q0;
assign v47_fu_1050_p6 = v137_2_q0;
assign v47_fu_1050_p8 = v137_3_q0;
assign v47_fu_1050_p9 = 'bx;
assign v53_fu_1159_p2 = v137_0_q1;
assign v53_fu_1159_p4 = v137_1_q1;
assign v53_fu_1159_p6 = v137_2_q1;
assign v53_fu_1159_p8 = v137_3_q1;
assign v53_fu_1159_p9 = 'bx;
assign v59_fu_1198_p2 = v137_0_q0;
assign v59_fu_1198_p4 = v137_1_q0;
assign v59_fu_1198_p6 = v137_2_q0;
assign v59_fu_1198_p8 = v137_3_q0;
assign v59_fu_1198_p9 = 'bx;
assign zext_ln41_fu_633_p1 = select_ln41_1_fu_625_p3;
assign zext_ln42_fu_977_p1 = lshr_ln_reg_1306;
assign zext_ln46_fu_666_p1 = tmp_fu_658_p3;
assign zext_ln54_fu_694_p1 = tmp_s_fu_684_p4;
assign zext_ln59_fu_989_p1 = or_ln58_1_fu_982_p3;
assign zext_ln61_fu_839_p1 = tmp_12_fu_830_p5;
assign zext_ln68_fu_855_p1 = tmp_13_fu_847_p4;
assign zext_ln73_fu_1124_p1 = or_ln72_1_fu_1116_p4;
assign zext_ln75_fu_950_p1 = tmp_15_fu_941_p5;
assign zext_ln82_fu_969_p1 = tmp_16_fu_958_p6;
assign zext_ln87_fu_1137_p1 = or_ln86_1_fu_1130_p3;
assign zext_ln89_fu_1082_p1 = tmp_17_fu_1073_p5;
assign zext_ln96_fu_1098_p1 = tmp_18_fu_1090_p4;
always @ (posedge ap_clk) begin
    v10_0_addr_1_reg_1481[0] <= 1'b1;
    v10_0_addr_1_reg_1481_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_1_reg_1481_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_1_reg_1487[0] <= 1'b1;
    v10_1_addr_1_reg_1487_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_1_reg_1487_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_2_reg_1548[1] <= 1'b1;
    v10_0_addr_2_reg_1548_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_2_reg_1548_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_2_reg_1548_pp0_iter4_reg[1] <= 1'b1;
    v10_1_addr_2_reg_1554[1] <= 1'b1;
    v10_1_addr_2_reg_1554_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_2_reg_1554_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_2_reg_1554_pp0_iter4_reg[1] <= 1'b1;
    v10_0_addr_3_reg_1560[1:0] <= 2'b11;
    v10_0_addr_3_reg_1560_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_1560_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_1560_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_1570[1:0] <= 2'b11;
    v10_1_addr_3_reg_1570_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_1570_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_1570_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 