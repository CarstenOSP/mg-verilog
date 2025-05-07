module fft1D_512_loady8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_ce,x_0_address0,x_0_ce0,x_0_q0,x_0_address1,x_0_ce1,x_0_q1,x_1_address0,x_1_ce0,x_1_q0,x_1_address1,x_1_ce1,x_1_q1,x_2_address0,x_2_ce0,x_2_q0,x_2_address1,x_2_ce1,x_2_q1,x_3_address0,x_3_ce0,x_3_q0,x_3_address1,x_3_ce1,x_3_q1,x_4_address0,x_4_ce0,x_4_q0,x_4_address1,x_4_ce1,x_4_q1,x_5_address0,x_5_ce0,x_5_q0,x_5_address1,x_5_ce1,x_5_q1,x_6_address0,x_6_ce0,x_6_q0,x_6_address1,x_6_ce1,x_6_q1,offset,ap_return_0,ap_return_1,ap_return_2,ap_return_3,ap_return_4,ap_return_5,ap_return_6,ap_return_7); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
output  [6:0] x_0_address0;
output   x_0_ce0;
input  [63:0] x_0_q0;
output  [6:0] x_0_address1;
output   x_0_ce1;
input  [63:0] x_0_q1;
output  [6:0] x_1_address0;
output   x_1_ce0;
input  [63:0] x_1_q0;
output  [6:0] x_1_address1;
output   x_1_ce1;
input  [63:0] x_1_q1;
output  [6:0] x_2_address0;
output   x_2_ce0;
input  [63:0] x_2_q0;
output  [6:0] x_2_address1;
output   x_2_ce1;
input  [63:0] x_2_q1;
output  [6:0] x_3_address0;
output   x_3_ce0;
input  [63:0] x_3_q0;
output  [6:0] x_3_address1;
output   x_3_ce1;
input  [63:0] x_3_q1;
output  [6:0] x_4_address0;
output   x_4_ce0;
input  [63:0] x_4_q0;
output  [6:0] x_4_address1;
output   x_4_ce1;
input  [63:0] x_4_q1;
output  [6:0] x_5_address0;
output   x_5_ce0;
input  [63:0] x_5_q0;
output  [6:0] x_5_address1;
output   x_5_ce1;
input  [63:0] x_5_q1;
output  [6:0] x_6_address0;
output   x_6_ce0;
input  [63:0] x_6_q0;
output  [6:0] x_6_address1;
output   x_6_ce1;
input  [63:0] x_6_q1;
input  [8:0] offset;
output  [63:0] ap_return_0;
output  [63:0] ap_return_1;
output  [63:0] ap_return_2;
output  [63:0] ap_return_3;
output  [63:0] ap_return_4;
output  [63:0] ap_return_5;
output  [63:0] ap_return_6;
output  [63:0] ap_return_7;
reg ap_done;
reg ap_idle;
reg ap_ready;
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
reg    ap_block_pp0_stage0_subdone;
reg   [8:0] offset_read_reg_1162;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] offset_read_reg_1162_pp0_iter1_reg;
reg   [8:0] offset_read_reg_1162_pp0_iter2_reg;
reg   [8:0] offset_read_reg_1162_pp0_iter3_reg;
reg   [8:0] offset_read_reg_1162_pp0_iter4_reg;
reg   [8:0] offset_read_reg_1162_pp0_iter5_reg;
reg   [8:0] offset_read_reg_1162_pp0_iter6_reg;
reg   [8:0] offset_read_reg_1162_pp0_iter7_reg;
reg   [8:0] offset_read_reg_1162_pp0_iter8_reg;
reg   [8:0] offset_read_reg_1162_pp0_iter9_reg;
reg   [6:0] tmp_reg_1169;
reg   [6:0] tmp_reg_1169_pp0_iter11_reg;
reg   [6:0] tmp_reg_1169_pp0_iter12_reg;
wire   [2:0] trunc_ln103_fu_617_p1;
reg   [2:0] trunc_ln103_reg_1174;
reg   [2:0] trunc_ln103_reg_1174_pp0_iter13_reg;
wire   [63:0] zext_ln102_fu_621_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln104_fu_640_p1;
wire   [63:0] zext_ln105_fu_660_p1;
wire   [63:0] zext_ln106_fu_680_p1;
wire   [63:0] zext_ln107_fu_700_p1;
wire   [63:0] zext_ln108_fu_720_p1;
wire   [63:0] zext_ln109_fu_740_p1;
wire   [63:0] zext_ln110_fu_760_p1;
reg    x_0_ce1_local;
reg    x_0_ce0_local;
reg   [6:0] x_0_address0_local;
reg    x_1_ce1_local;
reg    x_1_ce0_local;
reg   [6:0] x_1_address0_local;
reg    x_2_ce1_local;
reg    x_2_ce0_local;
reg   [6:0] x_2_address0_local;
reg    x_3_ce1_local;
reg    x_3_ce0_local;
reg   [6:0] x_3_address0_local;
reg    x_4_ce1_local;
reg    x_4_ce0_local;
reg   [6:0] x_4_address0_local;
reg    x_5_ce1_local;
reg    x_5_ce0_local;
reg   [6:0] x_5_address0_local;
reg    x_6_ce1_local;
reg    x_6_ce0_local;
reg   [6:0] x_6_address0_local;
wire   [3:0] grp_fu_589_p1;
wire   [8:0] mul_ln102_fu_601_p0;
wire   [10:0] mul_ln102_fu_601_p1;
wire   [18:0] mul_ln102_fu_601_p2;
wire   [2:0] grp_fu_589_p2;
wire   [20:0] tmp_21_fu_631_p1;
wire  signed [20:0] grp_fu_1099_p3;
wire   [7:0] tmp_21_fu_631_p4;
wire   [20:0] tmp_22_fu_651_p1;
wire  signed [20:0] grp_fu_1108_p3;
wire   [7:0] tmp_22_fu_651_p4;
wire   [20:0] tmp_23_fu_671_p1;
wire  signed [20:0] grp_fu_1117_p3;
wire   [7:0] tmp_23_fu_671_p4;
wire   [20:0] tmp_24_fu_691_p1;
wire  signed [20:0] grp_fu_1126_p3;
wire   [7:0] tmp_24_fu_691_p4;
wire   [20:0] tmp_25_fu_711_p1;
wire  signed [20:0] grp_fu_1135_p3;
wire   [7:0] tmp_25_fu_711_p4;
wire   [20:0] tmp_26_fu_731_p1;
wire  signed [20:0] grp_fu_1144_p3;
wire   [7:0] tmp_26_fu_731_p4;
wire   [20:0] tmp_27_fu_751_p1;
wire  signed [20:0] grp_fu_1153_p3;
wire   [7:0] tmp_27_fu_751_p4;
wire   [63:0] a_y_fu_771_p15;
wire   [63:0] a_y_1_fu_806_p15;
wire   [63:0] a_y_2_fu_841_p15;
wire   [63:0] a_y_3_fu_876_p15;
wire   [63:0] a_y_4_fu_911_p15;
wire   [63:0] a_y_5_fu_946_p15;
wire   [63:0] a_y_6_fu_981_p15;
wire   [63:0] a_y_7_fu_1016_p15;
wire   [63:0] a_y_fu_771_p17;
wire   [63:0] a_y_1_fu_806_p17;
wire   [63:0] a_y_2_fu_841_p17;
wire   [63:0] a_y_3_fu_876_p17;
wire   [63:0] a_y_4_fu_911_p17;
wire   [63:0] a_y_5_fu_946_p17;
wire   [63:0] a_y_6_fu_981_p17;
wire   [63:0] a_y_7_fu_1016_p17;
wire   [8:0] grp_fu_1099_p0;
wire   [9:0] zext_ln102_1_fu_595_p1;
wire   [3:0] grp_fu_1099_p1;
wire   [10:0] grp_fu_1099_p2;
wire   [8:0] grp_fu_1108_p0;
wire   [4:0] grp_fu_1108_p1;
wire   [10:0] grp_fu_1108_p2;
wire   [8:0] grp_fu_1117_p0;
wire   [4:0] grp_fu_1117_p1;
wire   [10:0] grp_fu_1117_p2;
wire   [8:0] grp_fu_1126_p0;
wire   [5:0] grp_fu_1126_p1;
wire   [10:0] grp_fu_1126_p2;
wire   [8:0] grp_fu_1135_p0;
wire   [5:0] grp_fu_1135_p1;
wire   [10:0] grp_fu_1135_p2;
wire   [8:0] grp_fu_1144_p0;
wire   [5:0] grp_fu_1144_p1;
wire   [10:0] grp_fu_1144_p2;
wire   [8:0] grp_fu_1153_p0;
wire   [5:0] grp_fu_1153_p1;
wire   [10:0] grp_fu_1153_p2;
reg    grp_fu_589_ce;
reg    grp_fu_1099_ce;
reg    grp_fu_1108_ce;
reg    grp_fu_1117_ce;
reg    grp_fu_1126_ce;
reg    grp_fu_1135_ce;
reg    grp_fu_1144_ce;
reg    grp_fu_1153_ce;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to13;
reg    ap_reset_idle_pp0;
reg    ap_reset_start_pp0;
wire    ap_enable_pp0;
wire   [18:0] mul_ln102_fu_601_p00;
wire   [2:0] a_y_fu_771_p1;
wire   [2:0] a_y_fu_771_p3;
wire   [2:0] a_y_fu_771_p5;
wire   [2:0] a_y_fu_771_p7;
wire  signed [2:0] a_y_fu_771_p9;
wire  signed [2:0] a_y_fu_771_p11;
wire  signed [2:0] a_y_fu_771_p13;
wire  signed [2:0] a_y_1_fu_806_p1;
wire   [2:0] a_y_1_fu_806_p3;
wire   [2:0] a_y_1_fu_806_p5;
wire   [2:0] a_y_1_fu_806_p7;
wire   [2:0] a_y_1_fu_806_p9;
wire  signed [2:0] a_y_1_fu_806_p11;
wire  signed [2:0] a_y_1_fu_806_p13;
wire  signed [2:0] a_y_2_fu_841_p1;
wire  signed [2:0] a_y_2_fu_841_p3;
wire   [2:0] a_y_2_fu_841_p5;
wire   [2:0] a_y_2_fu_841_p7;
wire   [2:0] a_y_2_fu_841_p9;
wire   [2:0] a_y_2_fu_841_p11;
wire  signed [2:0] a_y_2_fu_841_p13;
wire  signed [2:0] a_y_3_fu_876_p1;
wire  signed [2:0] a_y_3_fu_876_p3;
wire  signed [2:0] a_y_3_fu_876_p5;
wire   [2:0] a_y_3_fu_876_p7;
wire   [2:0] a_y_3_fu_876_p9;
wire   [2:0] a_y_3_fu_876_p11;
wire   [2:0] a_y_3_fu_876_p13;
wire   [2:0] a_y_4_fu_911_p1;
wire  signed [2:0] a_y_4_fu_911_p3;
wire  signed [2:0] a_y_4_fu_911_p5;
wire  signed [2:0] a_y_4_fu_911_p7;
wire   [2:0] a_y_4_fu_911_p9;
wire   [2:0] a_y_4_fu_911_p11;
wire   [2:0] a_y_4_fu_911_p13;
wire   [2:0] a_y_5_fu_946_p1;
wire   [2:0] a_y_5_fu_946_p3;
wire  signed [2:0] a_y_5_fu_946_p5;
wire  signed [2:0] a_y_5_fu_946_p7;
wire  signed [2:0] a_y_5_fu_946_p9;
wire   [2:0] a_y_5_fu_946_p11;
wire   [2:0] a_y_5_fu_946_p13;
wire   [2:0] a_y_6_fu_981_p1;
wire   [2:0] a_y_6_fu_981_p3;
wire   [2:0] a_y_6_fu_981_p5;
wire  signed [2:0] a_y_6_fu_981_p7;
wire  signed [2:0] a_y_6_fu_981_p9;
wire  signed [2:0] a_y_6_fu_981_p11;
wire   [2:0] a_y_6_fu_981_p13;
wire   [2:0] a_y_7_fu_1016_p1;
wire   [2:0] a_y_7_fu_1016_p3;
wire   [2:0] a_y_7_fu_1016_p5;
wire   [2:0] a_y_7_fu_1016_p7;
wire  signed [2:0] a_y_7_fu_1016_p9;
wire  signed [2:0] a_y_7_fu_1016_p11;
wire  signed [2:0] a_y_7_fu_1016_p13;
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
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U283(.clk(ap_clk),.reset(ap_rst),.din0(offset),.din1(grp_fu_589_p1),.ce(grp_fu_589_ce),.dout(grp_fu_589_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U284(.din0(mul_ln102_fu_601_p0),.din1(mul_ln102_fu_601_p1),.dout(mul_ln102_fu_601_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U285(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.din3(x_3_q1),.din4(x_4_q1),.din5(x_5_q1),.din6(x_6_q1),.def(a_y_fu_771_p15),.sel(trunc_ln103_reg_1174_pp0_iter13_reg),.dout(a_y_fu_771_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U286(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(a_y_1_fu_806_p15),.sel(trunc_ln103_reg_1174_pp0_iter13_reg),.dout(a_y_1_fu_806_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U287(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(a_y_2_fu_841_p15),.sel(trunc_ln103_reg_1174_pp0_iter13_reg),.dout(a_y_2_fu_841_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U288(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(a_y_3_fu_876_p15),.sel(trunc_ln103_reg_1174_pp0_iter13_reg),.dout(a_y_3_fu_876_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U289(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(a_y_4_fu_911_p15),.sel(trunc_ln103_reg_1174_pp0_iter13_reg),.dout(a_y_4_fu_911_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U290(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(a_y_5_fu_946_p15),.sel(trunc_ln103_reg_1174_pp0_iter13_reg),.dout(a_y_5_fu_946_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U291(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(a_y_6_fu_981_p15),.sel(trunc_ln103_reg_1174_pp0_iter13_reg),.dout(a_y_6_fu_981_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U292(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(a_y_7_fu_1016_p15),.sel(trunc_ln103_reg_1174_pp0_iter13_reg),.dout(a_y_7_fu_1016_p17));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U293(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1099_p0),.din1(grp_fu_1099_p1),.din2(grp_fu_1099_p2),.ce(grp_fu_1099_ce),.dout(grp_fu_1099_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U294(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1108_p0),.din1(grp_fu_1108_p1),.din2(grp_fu_1108_p2),.ce(grp_fu_1108_ce),.dout(grp_fu_1108_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U295(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1117_p0),.din1(grp_fu_1117_p1),.din2(grp_fu_1117_p2),.ce(grp_fu_1117_ce),.dout(grp_fu_1117_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U296(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1126_p0),.din1(grp_fu_1126_p1),.din2(grp_fu_1126_p2),.ce(grp_fu_1126_ce),.dout(grp_fu_1126_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U297(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1135_p0),.din1(grp_fu_1135_p1),.din2(grp_fu_1135_p2),.ce(grp_fu_1135_ce),.dout(grp_fu_1135_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U298(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1144_p0),.din1(grp_fu_1144_p1),.din2(grp_fu_1144_p2),.ce(grp_fu_1144_ce),.dout(grp_fu_1144_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U299(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1153_p0),.din1(grp_fu_1153_p1),.din2(grp_fu_1153_p2),.ce(grp_fu_1153_ce),.dout(grp_fu_1153_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_read_reg_1162 <= offset;
        offset_read_reg_1162_pp0_iter1_reg <= offset_read_reg_1162;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        offset_read_reg_1162_pp0_iter2_reg <= offset_read_reg_1162_pp0_iter1_reg;
        offset_read_reg_1162_pp0_iter3_reg <= offset_read_reg_1162_pp0_iter2_reg;
        offset_read_reg_1162_pp0_iter4_reg <= offset_read_reg_1162_pp0_iter3_reg;
        offset_read_reg_1162_pp0_iter5_reg <= offset_read_reg_1162_pp0_iter4_reg;
        offset_read_reg_1162_pp0_iter6_reg <= offset_read_reg_1162_pp0_iter5_reg;
        offset_read_reg_1162_pp0_iter7_reg <= offset_read_reg_1162_pp0_iter6_reg;
        offset_read_reg_1162_pp0_iter8_reg <= offset_read_reg_1162_pp0_iter7_reg;
        offset_read_reg_1162_pp0_iter9_reg <= offset_read_reg_1162_pp0_iter8_reg;
        tmp_reg_1169 <= {{mul_ln102_fu_601_p2[18:12]}};
        tmp_reg_1169_pp0_iter11_reg <= tmp_reg_1169;
        tmp_reg_1169_pp0_iter12_reg <= tmp_reg_1169_pp0_iter11_reg;
        trunc_ln103_reg_1174 <= trunc_ln103_fu_617_p1;
        trunc_ln103_reg_1174_pp0_iter13_reg <= trunc_ln103_reg_1174;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to13 = 1'b1;
    end else begin
        ap_idle_pp0_0to13 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (ap_start == 1'b0))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (ap_start == 1'b1))) begin
        ap_reset_start_pp0 = 1'b1;
    end else begin
        ap_reset_start_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1099_ce = 1'b1;
    end else begin
        grp_fu_1099_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1108_ce = 1'b1;
    end else begin
        grp_fu_1108_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1117_ce = 1'b1;
    end else begin
        grp_fu_1117_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1126_ce = 1'b1;
    end else begin
        grp_fu_1126_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1135_ce = 1'b1;
    end else begin
        grp_fu_1135_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1144_ce = 1'b1;
    end else begin
        grp_fu_1144_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1153_ce = 1'b1;
    end else begin
        grp_fu_1153_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_589_ce = 1'b1;
    end else begin
        grp_fu_589_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1174 == 3'd0)) begin
            x_0_address0_local = zext_ln110_fu_760_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd1)) begin
            x_0_address0_local = zext_ln109_fu_740_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd2)) begin
            x_0_address0_local = zext_ln108_fu_720_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd3)) begin
            x_0_address0_local = zext_ln107_fu_700_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd4)) begin
            x_0_address0_local = zext_ln106_fu_680_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd5)) begin
            x_0_address0_local = zext_ln105_fu_660_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd6)) begin
            x_0_address0_local = zext_ln104_fu_640_p1;
        end else begin
            x_0_address0_local = 'bx;
        end
    end else begin
        x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd0)))) begin
        x_0_ce0_local = 1'b1;
    end else begin
        x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce))) begin
        x_0_ce1_local = 1'b1;
    end else begin
        x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1174 == 3'd1)) begin
            x_1_address0_local = zext_ln110_fu_760_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd2)) begin
            x_1_address0_local = zext_ln109_fu_740_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd3)) begin
            x_1_address0_local = zext_ln108_fu_720_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd4)) begin
            x_1_address0_local = zext_ln107_fu_700_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd5)) begin
            x_1_address0_local = zext_ln106_fu_680_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd6)) begin
            x_1_address0_local = zext_ln105_fu_660_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd0)) begin
            x_1_address0_local = zext_ln104_fu_640_p1;
        end else begin
            x_1_address0_local = 'bx;
        end
    end else begin
        x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd0)))) begin
        x_1_ce0_local = 1'b1;
    end else begin
        x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce))) begin
        x_1_ce1_local = 1'b1;
    end else begin
        x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1174 == 3'd2)) begin
            x_2_address0_local = zext_ln110_fu_760_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd3)) begin
            x_2_address0_local = zext_ln109_fu_740_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd4)) begin
            x_2_address0_local = zext_ln108_fu_720_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd5)) begin
            x_2_address0_local = zext_ln107_fu_700_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd6)) begin
            x_2_address0_local = zext_ln106_fu_680_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd0)) begin
            x_2_address0_local = zext_ln105_fu_660_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd1)) begin
            x_2_address0_local = zext_ln104_fu_640_p1;
        end else begin
            x_2_address0_local = 'bx;
        end
    end else begin
        x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd0)))) begin
        x_2_ce0_local = 1'b1;
    end else begin
        x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce))) begin
        x_2_ce1_local = 1'b1;
    end else begin
        x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1174 == 3'd3)) begin
            x_3_address0_local = zext_ln110_fu_760_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd4)) begin
            x_3_address0_local = zext_ln109_fu_740_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd5)) begin
            x_3_address0_local = zext_ln108_fu_720_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd6)) begin
            x_3_address0_local = zext_ln107_fu_700_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd0)) begin
            x_3_address0_local = zext_ln106_fu_680_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd1)) begin
            x_3_address0_local = zext_ln105_fu_660_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd2)) begin
            x_3_address0_local = zext_ln104_fu_640_p1;
        end else begin
            x_3_address0_local = 'bx;
        end
    end else begin
        x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd0)))) begin
        x_3_ce0_local = 1'b1;
    end else begin
        x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce))) begin
        x_3_ce1_local = 1'b1;
    end else begin
        x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1174 == 3'd4)) begin
            x_4_address0_local = zext_ln110_fu_760_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd5)) begin
            x_4_address0_local = zext_ln109_fu_740_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd6)) begin
            x_4_address0_local = zext_ln108_fu_720_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd0)) begin
            x_4_address0_local = zext_ln107_fu_700_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd1)) begin
            x_4_address0_local = zext_ln106_fu_680_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd2)) begin
            x_4_address0_local = zext_ln105_fu_660_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd3)) begin
            x_4_address0_local = zext_ln104_fu_640_p1;
        end else begin
            x_4_address0_local = 'bx;
        end
    end else begin
        x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd0)))) begin
        x_4_ce0_local = 1'b1;
    end else begin
        x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce))) begin
        x_4_ce1_local = 1'b1;
    end else begin
        x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1174 == 3'd5)) begin
            x_5_address0_local = zext_ln110_fu_760_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd6)) begin
            x_5_address0_local = zext_ln109_fu_740_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd0)) begin
            x_5_address0_local = zext_ln108_fu_720_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd1)) begin
            x_5_address0_local = zext_ln107_fu_700_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd2)) begin
            x_5_address0_local = zext_ln106_fu_680_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd3)) begin
            x_5_address0_local = zext_ln105_fu_660_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd4)) begin
            x_5_address0_local = zext_ln104_fu_640_p1;
        end else begin
            x_5_address0_local = 'bx;
        end
    end else begin
        x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd0)))) begin
        x_5_ce0_local = 1'b1;
    end else begin
        x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce))) begin
        x_5_ce1_local = 1'b1;
    end else begin
        x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1174 == 3'd6)) begin
            x_6_address0_local = zext_ln110_fu_760_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd0)) begin
            x_6_address0_local = zext_ln109_fu_740_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd1)) begin
            x_6_address0_local = zext_ln108_fu_720_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd2)) begin
            x_6_address0_local = zext_ln107_fu_700_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd3)) begin
            x_6_address0_local = zext_ln106_fu_680_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd4)) begin
            x_6_address0_local = zext_ln105_fu_660_p1;
        end else if ((trunc_ln103_reg_1174 == 3'd5)) begin
            x_6_address0_local = zext_ln104_fu_640_p1;
        end else begin
            x_6_address0_local = 'bx;
        end
    end else begin
        x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1174 == 3'd0)))) begin
        x_6_ce0_local = 1'b1;
    end else begin
        x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce))) begin
        x_6_ce1_local = 1'b1;
    end else begin
        x_6_ce1_local = 1'b0;
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
assign a_y_1_fu_806_p15 = 'bx;
assign a_y_2_fu_841_p15 = 'bx;
assign a_y_3_fu_876_p15 = 'bx;
assign a_y_4_fu_911_p15 = 'bx;
assign a_y_5_fu_946_p15 = 'bx;
assign a_y_6_fu_981_p15 = 'bx;
assign a_y_7_fu_1016_p15 = 'bx;
assign a_y_fu_771_p15 = 'bx;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start;
assign ap_return_0 = a_y_fu_771_p17;
assign ap_return_1 = a_y_1_fu_806_p17;
assign ap_return_2 = a_y_2_fu_841_p17;
assign ap_return_3 = a_y_3_fu_876_p17;
assign ap_return_4 = a_y_4_fu_911_p17;
assign ap_return_5 = a_y_5_fu_946_p17;
assign ap_return_6 = a_y_6_fu_981_p17;
assign ap_return_7 = a_y_7_fu_1016_p17;
assign grp_fu_1099_p0 = zext_ln102_1_fu_595_p1;
assign grp_fu_1099_p1 = 10'd8;
assign grp_fu_1099_p2 = 21'd1171;
assign grp_fu_1108_p0 = zext_ln102_1_fu_595_p1;
assign grp_fu_1108_p1 = 10'd16;
assign grp_fu_1108_p2 = 21'd1171;
assign grp_fu_1117_p0 = zext_ln102_1_fu_595_p1;
assign grp_fu_1117_p1 = 10'd24;
assign grp_fu_1117_p2 = 21'd1171;
assign grp_fu_1126_p0 = zext_ln102_1_fu_595_p1;
assign grp_fu_1126_p1 = 10'd32;
assign grp_fu_1126_p2 = 21'd1171;
assign grp_fu_1135_p0 = zext_ln102_1_fu_595_p1;
assign grp_fu_1135_p1 = 10'd40;
assign grp_fu_1135_p2 = 21'd1171;
assign grp_fu_1144_p0 = zext_ln102_1_fu_595_p1;
assign grp_fu_1144_p1 = 10'd48;
assign grp_fu_1144_p2 = 21'd1171;
assign grp_fu_1153_p0 = zext_ln102_1_fu_595_p1;
assign grp_fu_1153_p1 = 10'd56;
assign grp_fu_1153_p2 = 21'd1171;
assign grp_fu_589_p1 = 9'd7;
assign mul_ln102_fu_601_p0 = mul_ln102_fu_601_p00;
assign mul_ln102_fu_601_p00 = offset_read_reg_1162_pp0_iter9_reg;
assign mul_ln102_fu_601_p1 = 19'd586;
assign tmp_21_fu_631_p1 = grp_fu_1099_p3;
assign tmp_21_fu_631_p4 = {{tmp_21_fu_631_p1[20:13]}};
assign tmp_22_fu_651_p1 = grp_fu_1108_p3;
assign tmp_22_fu_651_p4 = {{tmp_22_fu_651_p1[20:13]}};
assign tmp_23_fu_671_p1 = grp_fu_1117_p3;
assign tmp_23_fu_671_p4 = {{tmp_23_fu_671_p1[20:13]}};
assign tmp_24_fu_691_p1 = grp_fu_1126_p3;
assign tmp_24_fu_691_p4 = {{tmp_24_fu_691_p1[20:13]}};
assign tmp_25_fu_711_p1 = grp_fu_1135_p3;
assign tmp_25_fu_711_p4 = {{tmp_25_fu_711_p1[20:13]}};
assign tmp_26_fu_731_p1 = grp_fu_1144_p3;
assign tmp_26_fu_731_p4 = {{tmp_26_fu_731_p1[20:13]}};
assign tmp_27_fu_751_p1 = grp_fu_1153_p3;
assign tmp_27_fu_751_p4 = {{tmp_27_fu_751_p1[20:13]}};
assign trunc_ln103_fu_617_p1 = grp_fu_589_p2[2:0];
assign x_0_address0 = x_0_address0_local;
assign x_0_address1 = zext_ln102_fu_621_p1;
assign x_0_ce0 = x_0_ce0_local;
assign x_0_ce1 = x_0_ce1_local;
assign x_1_address0 = x_1_address0_local;
assign x_1_address1 = zext_ln102_fu_621_p1;
assign x_1_ce0 = x_1_ce0_local;
assign x_1_ce1 = x_1_ce1_local;
assign x_2_address0 = x_2_address0_local;
assign x_2_address1 = zext_ln102_fu_621_p1;
assign x_2_ce0 = x_2_ce0_local;
assign x_2_ce1 = x_2_ce1_local;
assign x_3_address0 = x_3_address0_local;
assign x_3_address1 = zext_ln102_fu_621_p1;
assign x_3_ce0 = x_3_ce0_local;
assign x_3_ce1 = x_3_ce1_local;
assign x_4_address0 = x_4_address0_local;
assign x_4_address1 = zext_ln102_fu_621_p1;
assign x_4_ce0 = x_4_ce0_local;
assign x_4_ce1 = x_4_ce1_local;
assign x_5_address0 = x_5_address0_local;
assign x_5_address1 = zext_ln102_fu_621_p1;
assign x_5_ce0 = x_5_ce0_local;
assign x_5_ce1 = x_5_ce1_local;
assign x_6_address0 = x_6_address0_local;
assign x_6_address1 = zext_ln102_fu_621_p1;
assign x_6_ce0 = x_6_ce0_local;
assign x_6_ce1 = x_6_ce1_local;
assign zext_ln102_1_fu_595_p1 = offset_read_reg_1162_pp0_iter9_reg;
assign zext_ln102_fu_621_p1 = tmp_reg_1169_pp0_iter12_reg;
assign zext_ln104_fu_640_p1 = tmp_21_fu_631_p4;
assign zext_ln105_fu_660_p1 = tmp_22_fu_651_p4;
assign zext_ln106_fu_680_p1 = tmp_23_fu_671_p4;
assign zext_ln107_fu_700_p1 = tmp_24_fu_691_p4;
assign zext_ln108_fu_720_p1 = tmp_25_fu_711_p4;
assign zext_ln109_fu_740_p1 = tmp_26_fu_731_p4;
assign zext_ln110_fu_760_p1 = tmp_27_fu_751_p4;
endmodule 