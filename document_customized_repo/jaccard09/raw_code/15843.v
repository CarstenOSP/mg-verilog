module fft1D_512_loady8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_ce,x_0_address0,x_0_ce0,x_0_q0,x_1_address0,x_1_ce0,x_1_q0,x_2_address0,x_2_ce0,x_2_q0,x_3_address0,x_3_ce0,x_3_q0,x_4_address0,x_4_ce0,x_4_q0,x_5_address0,x_5_ce0,x_5_q0,x_6_address0,x_6_ce0,x_6_q0,x_7_address0,x_7_ce0,x_7_q0,x_8_address0,x_8_ce0,x_8_q0,x_9_address0,x_9_ce0,x_9_q0,x_10_address0,x_10_ce0,x_10_q0,x_11_address0,x_11_ce0,x_11_q0,x_12_address0,x_12_ce0,x_12_q0,offset,ap_return_0,ap_return_1,ap_return_2,ap_return_3,ap_return_4,ap_return_5,ap_return_6,ap_return_7); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
output  [5:0] x_0_address0;
output   x_0_ce0;
input  [63:0] x_0_q0;
output  [5:0] x_1_address0;
output   x_1_ce0;
input  [63:0] x_1_q0;
output  [5:0] x_2_address0;
output   x_2_ce0;
input  [63:0] x_2_q0;
output  [5:0] x_3_address0;
output   x_3_ce0;
input  [63:0] x_3_q0;
output  [5:0] x_4_address0;
output   x_4_ce0;
input  [63:0] x_4_q0;
output  [5:0] x_5_address0;
output   x_5_ce0;
input  [63:0] x_5_q0;
output  [5:0] x_6_address0;
output   x_6_ce0;
input  [63:0] x_6_q0;
output  [5:0] x_7_address0;
output   x_7_ce0;
input  [63:0] x_7_q0;
output  [5:0] x_8_address0;
output   x_8_ce0;
input  [63:0] x_8_q0;
output  [5:0] x_9_address0;
output   x_9_ce0;
input  [63:0] x_9_q0;
output  [5:0] x_10_address0;
output   x_10_ce0;
input  [63:0] x_10_q0;
output  [5:0] x_11_address0;
output   x_11_ce0;
input  [63:0] x_11_q0;
output  [5:0] x_12_address0;
output   x_12_ce0;
input  [63:0] x_12_q0;
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
reg   [8:0] offset_read_reg_1812;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] offset_read_reg_1812_pp0_iter1_reg;
reg   [8:0] offset_read_reg_1812_pp0_iter2_reg;
reg   [8:0] offset_read_reg_1812_pp0_iter3_reg;
reg   [8:0] offset_read_reg_1812_pp0_iter4_reg;
reg   [8:0] offset_read_reg_1812_pp0_iter5_reg;
reg   [8:0] offset_read_reg_1812_pp0_iter6_reg;
reg   [8:0] offset_read_reg_1812_pp0_iter7_reg;
reg   [8:0] offset_read_reg_1812_pp0_iter8_reg;
reg   [8:0] offset_read_reg_1812_pp0_iter9_reg;
reg   [5:0] tmp_reg_1819;
reg   [5:0] tmp_reg_1819_pp0_iter11_reg;
reg   [5:0] tmp_reg_1819_pp0_iter12_reg;
wire   [3:0] trunc_ln103_fu_1027_p1;
reg   [3:0] trunc_ln103_reg_1824;
reg   [3:0] trunc_ln103_reg_1824_pp0_iter13_reg;
wire   [63:0] zext_ln102_fu_1031_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln104_fu_1056_p1;
wire   [63:0] zext_ln105_fu_1082_p1;
wire   [63:0] zext_ln106_fu_1108_p1;
wire   [63:0] zext_ln107_fu_1134_p1;
wire   [63:0] zext_ln108_fu_1160_p1;
wire   [63:0] zext_ln109_fu_1186_p1;
wire   [63:0] zext_ln110_fu_1212_p1;
reg    x_0_ce0_local;
reg   [5:0] x_0_address0_local;
reg    x_1_ce0_local;
reg   [5:0] x_1_address0_local;
reg    x_2_ce0_local;
reg   [5:0] x_2_address0_local;
reg    x_3_ce0_local;
reg   [5:0] x_3_address0_local;
reg    x_4_ce0_local;
reg   [5:0] x_4_address0_local;
reg    x_5_ce0_local;
reg   [5:0] x_5_address0_local;
reg    x_6_ce0_local;
reg   [5:0] x_6_address0_local;
reg    x_7_ce0_local;
reg   [5:0] x_7_address0_local;
reg    x_8_ce0_local;
reg   [5:0] x_8_address0_local;
reg    x_9_ce0_local;
reg   [5:0] x_9_address0_local;
reg    x_10_ce0_local;
reg   [5:0] x_10_address0_local;
reg    x_11_ce0_local;
reg   [5:0] x_11_address0_local;
reg    x_12_ce0_local;
reg   [5:0] x_12_address0_local;
wire   [4:0] grp_fu_999_p1;
wire   [8:0] mul_ln102_fu_1011_p0;
wire   [10:0] mul_ln102_fu_1011_p1;
wire   [18:0] mul_ln102_fu_1011_p2;
wire   [3:0] grp_fu_999_p2;
wire   [20:0] tmp_21_fu_1047_p1;
wire  signed [20:0] grp_fu_1749_p3;
wire   [6:0] tmp_21_fu_1047_p4;
wire   [20:0] tmp_22_fu_1073_p1;
wire  signed [20:0] grp_fu_1758_p3;
wire   [6:0] tmp_22_fu_1073_p4;
wire   [20:0] tmp_23_fu_1099_p1;
wire  signed [20:0] grp_fu_1767_p3;
wire   [6:0] tmp_23_fu_1099_p4;
wire   [20:0] tmp_24_fu_1125_p1;
wire  signed [20:0] grp_fu_1776_p3;
wire   [6:0] tmp_24_fu_1125_p4;
wire   [20:0] tmp_25_fu_1151_p1;
wire  signed [20:0] grp_fu_1785_p3;
wire   [6:0] tmp_25_fu_1151_p4;
wire   [20:0] tmp_26_fu_1177_p1;
wire  signed [20:0] grp_fu_1794_p3;
wire   [6:0] tmp_26_fu_1177_p4;
wire   [20:0] tmp_27_fu_1203_p1;
wire  signed [20:0] grp_fu_1803_p3;
wire   [6:0] tmp_27_fu_1203_p4;
wire   [63:0] a_y_fu_1229_p27;
wire   [63:0] a_y_1_fu_1288_p27;
wire   [63:0] a_y_2_fu_1347_p27;
wire   [63:0] a_y_3_fu_1406_p27;
wire   [63:0] a_y_4_fu_1465_p27;
wire   [63:0] a_y_5_fu_1524_p27;
wire   [63:0] a_y_6_fu_1583_p27;
wire   [63:0] a_y_7_fu_1642_p27;
wire   [63:0] a_y_fu_1229_p29;
wire   [63:0] a_y_1_fu_1288_p29;
wire   [63:0] a_y_2_fu_1347_p29;
wire   [63:0] a_y_3_fu_1406_p29;
wire   [63:0] a_y_4_fu_1465_p29;
wire   [63:0] a_y_5_fu_1524_p29;
wire   [63:0] a_y_6_fu_1583_p29;
wire   [63:0] a_y_7_fu_1642_p29;
wire   [8:0] grp_fu_1749_p0;
wire   [9:0] zext_ln102_1_fu_1005_p1;
wire   [3:0] grp_fu_1749_p1;
wire   [10:0] grp_fu_1749_p2;
wire   [8:0] grp_fu_1758_p0;
wire   [4:0] grp_fu_1758_p1;
wire   [10:0] grp_fu_1758_p2;
wire   [8:0] grp_fu_1767_p0;
wire   [4:0] grp_fu_1767_p1;
wire   [10:0] grp_fu_1767_p2;
wire   [8:0] grp_fu_1776_p0;
wire   [5:0] grp_fu_1776_p1;
wire   [10:0] grp_fu_1776_p2;
wire   [8:0] grp_fu_1785_p0;
wire   [5:0] grp_fu_1785_p1;
wire   [10:0] grp_fu_1785_p2;
wire   [8:0] grp_fu_1794_p0;
wire   [5:0] grp_fu_1794_p1;
wire   [10:0] grp_fu_1794_p2;
wire   [8:0] grp_fu_1803_p0;
wire   [5:0] grp_fu_1803_p1;
wire   [10:0] grp_fu_1803_p2;
reg    grp_fu_999_ce;
reg    grp_fu_1749_ce;
reg    grp_fu_1758_ce;
reg    grp_fu_1767_ce;
reg    grp_fu_1776_ce;
reg    grp_fu_1785_ce;
reg    grp_fu_1794_ce;
reg    grp_fu_1803_ce;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to13;
reg    ap_reset_idle_pp0;
reg    ap_reset_start_pp0;
wire    ap_enable_pp0;
wire   [18:0] mul_ln102_fu_1011_p00;
wire   [3:0] a_y_fu_1229_p1;
wire   [3:0] a_y_fu_1229_p3;
wire   [3:0] a_y_fu_1229_p5;
wire   [3:0] a_y_fu_1229_p7;
wire   [3:0] a_y_fu_1229_p9;
wire   [3:0] a_y_fu_1229_p11;
wire   [3:0] a_y_fu_1229_p13;
wire   [3:0] a_y_fu_1229_p15;
wire  signed [3:0] a_y_fu_1229_p17;
wire  signed [3:0] a_y_fu_1229_p19;
wire  signed [3:0] a_y_fu_1229_p21;
wire  signed [3:0] a_y_fu_1229_p23;
wire  signed [3:0] a_y_fu_1229_p25;
wire   [3:0] a_y_1_fu_1288_p1;
wire   [3:0] a_y_1_fu_1288_p3;
wire   [3:0] a_y_1_fu_1288_p5;
wire  signed [3:0] a_y_1_fu_1288_p7;
wire  signed [3:0] a_y_1_fu_1288_p9;
wire  signed [3:0] a_y_1_fu_1288_p11;
wire  signed [3:0] a_y_1_fu_1288_p13;
wire  signed [3:0] a_y_1_fu_1288_p15;
wire   [3:0] a_y_1_fu_1288_p17;
wire   [3:0] a_y_1_fu_1288_p19;
wire   [3:0] a_y_1_fu_1288_p21;
wire   [3:0] a_y_1_fu_1288_p23;
wire   [3:0] a_y_1_fu_1288_p25;
wire  signed [3:0] a_y_2_fu_1347_p1;
wire  signed [3:0] a_y_2_fu_1347_p3;
wire  signed [3:0] a_y_2_fu_1347_p5;
wire   [3:0] a_y_2_fu_1347_p7;
wire   [3:0] a_y_2_fu_1347_p9;
wire   [3:0] a_y_2_fu_1347_p11;
wire   [3:0] a_y_2_fu_1347_p13;
wire   [3:0] a_y_2_fu_1347_p15;
wire   [3:0] a_y_2_fu_1347_p17;
wire   [3:0] a_y_2_fu_1347_p19;
wire   [3:0] a_y_2_fu_1347_p21;
wire  signed [3:0] a_y_2_fu_1347_p23;
wire  signed [3:0] a_y_2_fu_1347_p25;
wire   [3:0] a_y_3_fu_1406_p1;
wire   [3:0] a_y_3_fu_1406_p3;
wire   [3:0] a_y_3_fu_1406_p5;
wire   [3:0] a_y_3_fu_1406_p7;
wire   [3:0] a_y_3_fu_1406_p9;
wire   [3:0] a_y_3_fu_1406_p11;
wire  signed [3:0] a_y_3_fu_1406_p13;
wire  signed [3:0] a_y_3_fu_1406_p15;
wire  signed [3:0] a_y_3_fu_1406_p17;
wire  signed [3:0] a_y_3_fu_1406_p19;
wire  signed [3:0] a_y_3_fu_1406_p21;
wire   [3:0] a_y_3_fu_1406_p23;
wire   [3:0] a_y_3_fu_1406_p25;
wire   [3:0] a_y_4_fu_1465_p1;
wire  signed [3:0] a_y_4_fu_1465_p3;
wire  signed [3:0] a_y_4_fu_1465_p5;
wire  signed [3:0] a_y_4_fu_1465_p7;
wire  signed [3:0] a_y_4_fu_1465_p9;
wire  signed [3:0] a_y_4_fu_1465_p11;
wire   [3:0] a_y_4_fu_1465_p13;
wire   [3:0] a_y_4_fu_1465_p15;
wire   [3:0] a_y_4_fu_1465_p17;
wire   [3:0] a_y_4_fu_1465_p19;
wire   [3:0] a_y_4_fu_1465_p21;
wire   [3:0] a_y_4_fu_1465_p23;
wire   [3:0] a_y_4_fu_1465_p25;
wire  signed [3:0] a_y_5_fu_1524_p1;
wire   [3:0] a_y_5_fu_1524_p3;
wire   [3:0] a_y_5_fu_1524_p5;
wire   [3:0] a_y_5_fu_1524_p7;
wire   [3:0] a_y_5_fu_1524_p9;
wire   [3:0] a_y_5_fu_1524_p11;
wire   [3:0] a_y_5_fu_1524_p13;
wire   [3:0] a_y_5_fu_1524_p15;
wire   [3:0] a_y_5_fu_1524_p17;
wire  signed [3:0] a_y_5_fu_1524_p19;
wire  signed [3:0] a_y_5_fu_1524_p21;
wire  signed [3:0] a_y_5_fu_1524_p23;
wire  signed [3:0] a_y_5_fu_1524_p25;
wire   [3:0] a_y_6_fu_1583_p1;
wire   [3:0] a_y_6_fu_1583_p3;
wire   [3:0] a_y_6_fu_1583_p5;
wire   [3:0] a_y_6_fu_1583_p7;
wire  signed [3:0] a_y_6_fu_1583_p9;
wire  signed [3:0] a_y_6_fu_1583_p11;
wire  signed [3:0] a_y_6_fu_1583_p13;
wire  signed [3:0] a_y_6_fu_1583_p15;
wire  signed [3:0] a_y_6_fu_1583_p17;
wire   [3:0] a_y_6_fu_1583_p19;
wire   [3:0] a_y_6_fu_1583_p21;
wire   [3:0] a_y_6_fu_1583_p23;
wire   [3:0] a_y_6_fu_1583_p25;
wire  signed [3:0] a_y_7_fu_1642_p1;
wire  signed [3:0] a_y_7_fu_1642_p3;
wire  signed [3:0] a_y_7_fu_1642_p5;
wire  signed [3:0] a_y_7_fu_1642_p7;
wire   [3:0] a_y_7_fu_1642_p9;
wire   [3:0] a_y_7_fu_1642_p11;
wire   [3:0] a_y_7_fu_1642_p13;
wire   [3:0] a_y_7_fu_1642_p15;
wire   [3:0] a_y_7_fu_1642_p17;
wire   [3:0] a_y_7_fu_1642_p19;
wire   [3:0] a_y_7_fu_1642_p21;
wire   [3:0] a_y_7_fu_1642_p23;
wire  signed [3:0] a_y_7_fu_1642_p25;
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
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U356(.clk(ap_clk),.reset(ap_rst),.din0(offset),.din1(grp_fu_999_p1),.ce(grp_fu_999_ce),.dout(grp_fu_999_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U357(.din0(mul_ln102_fu_1011_p0),.din1(mul_ln102_fu_1011_p1),.dout(mul_ln102_fu_1011_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U358(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(a_y_fu_1229_p27),.sel(trunc_ln103_reg_1824_pp0_iter13_reg),.dout(a_y_fu_1229_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U359(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(a_y_1_fu_1288_p27),.sel(trunc_ln103_reg_1824_pp0_iter13_reg),.dout(a_y_1_fu_1288_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U360(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(a_y_2_fu_1347_p27),.sel(trunc_ln103_reg_1824_pp0_iter13_reg),.dout(a_y_2_fu_1347_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U361(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(a_y_3_fu_1406_p27),.sel(trunc_ln103_reg_1824_pp0_iter13_reg),.dout(a_y_3_fu_1406_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U362(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(a_y_4_fu_1465_p27),.sel(trunc_ln103_reg_1824_pp0_iter13_reg),.dout(a_y_4_fu_1465_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U363(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(a_y_5_fu_1524_p27),.sel(trunc_ln103_reg_1824_pp0_iter13_reg),.dout(a_y_5_fu_1524_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U364(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(a_y_6_fu_1583_p27),.sel(trunc_ln103_reg_1824_pp0_iter13_reg),.dout(a_y_6_fu_1583_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U365(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(a_y_7_fu_1642_p27),.sel(trunc_ln103_reg_1824_pp0_iter13_reg),.dout(a_y_7_fu_1642_p29));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U366(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1749_p0),.din1(grp_fu_1749_p1),.din2(grp_fu_1749_p2),.ce(grp_fu_1749_ce),.dout(grp_fu_1749_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U367(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1758_p0),.din1(grp_fu_1758_p1),.din2(grp_fu_1758_p2),.ce(grp_fu_1758_ce),.dout(grp_fu_1758_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U368(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1767_p0),.din1(grp_fu_1767_p1),.din2(grp_fu_1767_p2),.ce(grp_fu_1767_ce),.dout(grp_fu_1767_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U369(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1776_p0),.din1(grp_fu_1776_p1),.din2(grp_fu_1776_p2),.ce(grp_fu_1776_ce),.dout(grp_fu_1776_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U370(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1785_p0),.din1(grp_fu_1785_p1),.din2(grp_fu_1785_p2),.ce(grp_fu_1785_ce),.dout(grp_fu_1785_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U371(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1794_p0),.din1(grp_fu_1794_p1),.din2(grp_fu_1794_p2),.ce(grp_fu_1794_ce),.dout(grp_fu_1794_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U372(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1803_p0),.din1(grp_fu_1803_p1),.din2(grp_fu_1803_p2),.ce(grp_fu_1803_ce),.dout(grp_fu_1803_p3));
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
        offset_read_reg_1812 <= offset;
        offset_read_reg_1812_pp0_iter1_reg <= offset_read_reg_1812;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        offset_read_reg_1812_pp0_iter2_reg <= offset_read_reg_1812_pp0_iter1_reg;
        offset_read_reg_1812_pp0_iter3_reg <= offset_read_reg_1812_pp0_iter2_reg;
        offset_read_reg_1812_pp0_iter4_reg <= offset_read_reg_1812_pp0_iter3_reg;
        offset_read_reg_1812_pp0_iter5_reg <= offset_read_reg_1812_pp0_iter4_reg;
        offset_read_reg_1812_pp0_iter6_reg <= offset_read_reg_1812_pp0_iter5_reg;
        offset_read_reg_1812_pp0_iter7_reg <= offset_read_reg_1812_pp0_iter6_reg;
        offset_read_reg_1812_pp0_iter8_reg <= offset_read_reg_1812_pp0_iter7_reg;
        offset_read_reg_1812_pp0_iter9_reg <= offset_read_reg_1812_pp0_iter8_reg;
        tmp_reg_1819 <= {{mul_ln102_fu_1011_p2[18:13]}};
        tmp_reg_1819_pp0_iter11_reg <= tmp_reg_1819;
        tmp_reg_1819_pp0_iter12_reg <= tmp_reg_1819_pp0_iter11_reg;
        trunc_ln103_reg_1824 <= trunc_ln103_fu_1027_p1;
        trunc_ln103_reg_1824_pp0_iter13_reg <= trunc_ln103_reg_1824;
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
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to13 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (ap_idle_pp0_0to13 == 1'b1))) begin
        ap_reset_start_pp0 = 1'b1;
    end else begin
        ap_reset_start_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1749_ce = 1'b1;
    end else begin
        grp_fu_1749_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1758_ce = 1'b1;
    end else begin
        grp_fu_1758_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1767_ce = 1'b1;
    end else begin
        grp_fu_1767_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1776_ce = 1'b1;
    end else begin
        grp_fu_1776_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1785_ce = 1'b1;
    end else begin
        grp_fu_1785_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1794_ce = 1'b1;
    end else begin
        grp_fu_1794_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1803_ce = 1'b1;
    end else begin
        grp_fu_1803_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_999_ce = 1'b1;
    end else begin
        grp_fu_999_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd9)) begin
            x_0_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd4)) begin
            x_0_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd12)) begin
            x_0_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd7)) begin
            x_0_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd2)) begin
            x_0_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd10)) begin
            x_0_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd5)) begin
            x_0_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd0)) begin
            x_0_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_0_address0_local = 'bx;
        end
    end else begin
        x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd0)))) begin
        x_0_ce0_local = 1'b1;
    end else begin
        x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd6)) begin
            x_10_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd1)) begin
            x_10_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd9)) begin
            x_10_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd4)) begin
            x_10_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd12)) begin
            x_10_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd7)) begin
            x_10_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd2)) begin
            x_10_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd10)) begin
            x_10_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_10_address0_local = 'bx;
        end
    end else begin
        x_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd1)))) begin
        x_10_ce0_local = 1'b1;
    end else begin
        x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd7)) begin
            x_11_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd2)) begin
            x_11_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd10)) begin
            x_11_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd5)) begin
            x_11_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd0)) begin
            x_11_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd8)) begin
            x_11_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd3)) begin
            x_11_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd11)) begin
            x_11_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_11_address0_local = 'bx;
        end
    end else begin
        x_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd0)))) begin
        x_11_ce0_local = 1'b1;
    end else begin
        x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd8)) begin
            x_12_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd3)) begin
            x_12_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd11)) begin
            x_12_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd6)) begin
            x_12_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd1)) begin
            x_12_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd9)) begin
            x_12_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd4)) begin
            x_12_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd12)) begin
            x_12_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_12_address0_local = 'bx;
        end
    end else begin
        x_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd1)))) begin
        x_12_ce0_local = 1'b1;
    end else begin
        x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd10)) begin
            x_1_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd5)) begin
            x_1_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd0)) begin
            x_1_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd8)) begin
            x_1_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd3)) begin
            x_1_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd11)) begin
            x_1_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd6)) begin
            x_1_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd1)) begin
            x_1_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_1_address0_local = 'bx;
        end
    end else begin
        x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd0)))) begin
        x_1_ce0_local = 1'b1;
    end else begin
        x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd11)) begin
            x_2_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd6)) begin
            x_2_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd1)) begin
            x_2_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd9)) begin
            x_2_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd4)) begin
            x_2_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd12)) begin
            x_2_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd7)) begin
            x_2_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd2)) begin
            x_2_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_2_address0_local = 'bx;
        end
    end else begin
        x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd1)))) begin
        x_2_ce0_local = 1'b1;
    end else begin
        x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd12)) begin
            x_3_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd7)) begin
            x_3_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd2)) begin
            x_3_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd10)) begin
            x_3_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd5)) begin
            x_3_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd0)) begin
            x_3_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd8)) begin
            x_3_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd3)) begin
            x_3_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_3_address0_local = 'bx;
        end
    end else begin
        x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd0)))) begin
        x_3_ce0_local = 1'b1;
    end else begin
        x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd0)) begin
            x_4_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd8)) begin
            x_4_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd3)) begin
            x_4_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd11)) begin
            x_4_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd6)) begin
            x_4_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd1)) begin
            x_4_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd9)) begin
            x_4_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd4)) begin
            x_4_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_4_address0_local = 'bx;
        end
    end else begin
        x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd0)))) begin
        x_4_ce0_local = 1'b1;
    end else begin
        x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd1)) begin
            x_5_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd9)) begin
            x_5_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd4)) begin
            x_5_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd12)) begin
            x_5_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd7)) begin
            x_5_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd2)) begin
            x_5_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd10)) begin
            x_5_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd5)) begin
            x_5_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_5_address0_local = 'bx;
        end
    end else begin
        x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd1)))) begin
        x_5_ce0_local = 1'b1;
    end else begin
        x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd2)) begin
            x_6_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd10)) begin
            x_6_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd5)) begin
            x_6_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd0)) begin
            x_6_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd8)) begin
            x_6_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd3)) begin
            x_6_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd11)) begin
            x_6_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd6)) begin
            x_6_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_6_address0_local = 'bx;
        end
    end else begin
        x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd0)))) begin
        x_6_ce0_local = 1'b1;
    end else begin
        x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd3)) begin
            x_7_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd11)) begin
            x_7_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd6)) begin
            x_7_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd1)) begin
            x_7_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd9)) begin
            x_7_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd4)) begin
            x_7_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd12)) begin
            x_7_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd7)) begin
            x_7_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_7_address0_local = 'bx;
        end
    end else begin
        x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd1)))) begin
        x_7_ce0_local = 1'b1;
    end else begin
        x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd4)) begin
            x_8_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd12)) begin
            x_8_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd7)) begin
            x_8_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd2)) begin
            x_8_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd10)) begin
            x_8_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd5)) begin
            x_8_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd0)) begin
            x_8_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd8)) begin
            x_8_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_8_address0_local = 'bx;
        end
    end else begin
        x_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd0)))) begin
        x_8_ce0_local = 1'b1;
    end else begin
        x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1824 == 4'd5)) begin
            x_9_address0_local = zext_ln110_fu_1212_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd0)) begin
            x_9_address0_local = zext_ln109_fu_1186_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd8)) begin
            x_9_address0_local = zext_ln108_fu_1160_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd3)) begin
            x_9_address0_local = zext_ln107_fu_1134_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd11)) begin
            x_9_address0_local = zext_ln106_fu_1108_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd6)) begin
            x_9_address0_local = zext_ln105_fu_1082_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd1)) begin
            x_9_address0_local = zext_ln104_fu_1056_p1;
        end else if ((trunc_ln103_reg_1824 == 4'd9)) begin
            x_9_address0_local = zext_ln102_fu_1031_p1;
        end else begin
            x_9_address0_local = 'bx;
        end
    end else begin
        x_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1824 == 4'd0)))) begin
        x_9_ce0_local = 1'b1;
    end else begin
        x_9_ce0_local = 1'b0;
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
assign a_y_1_fu_1288_p27 = 'bx;
assign a_y_2_fu_1347_p27 = 'bx;
assign a_y_3_fu_1406_p27 = 'bx;
assign a_y_4_fu_1465_p27 = 'bx;
assign a_y_5_fu_1524_p27 = 'bx;
assign a_y_6_fu_1583_p27 = 'bx;
assign a_y_7_fu_1642_p27 = 'bx;
assign a_y_fu_1229_p27 = 'bx;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start;
assign ap_return_0 = a_y_fu_1229_p29;
assign ap_return_1 = a_y_1_fu_1288_p29;
assign ap_return_2 = a_y_2_fu_1347_p29;
assign ap_return_3 = a_y_3_fu_1406_p29;
assign ap_return_4 = a_y_4_fu_1465_p29;
assign ap_return_5 = a_y_5_fu_1524_p29;
assign ap_return_6 = a_y_6_fu_1583_p29;
assign ap_return_7 = a_y_7_fu_1642_p29;
assign grp_fu_1749_p0 = zext_ln102_1_fu_1005_p1;
assign grp_fu_1749_p1 = 10'd8;
assign grp_fu_1749_p2 = 21'd1261;
assign grp_fu_1758_p0 = zext_ln102_1_fu_1005_p1;
assign grp_fu_1758_p1 = 10'd16;
assign grp_fu_1758_p2 = 21'd1261;
assign grp_fu_1767_p0 = zext_ln102_1_fu_1005_p1;
assign grp_fu_1767_p1 = 10'd24;
assign grp_fu_1767_p2 = 21'd1261;
assign grp_fu_1776_p0 = zext_ln102_1_fu_1005_p1;
assign grp_fu_1776_p1 = 10'd32;
assign grp_fu_1776_p2 = 21'd1261;
assign grp_fu_1785_p0 = zext_ln102_1_fu_1005_p1;
assign grp_fu_1785_p1 = 10'd40;
assign grp_fu_1785_p2 = 21'd1261;
assign grp_fu_1794_p0 = zext_ln102_1_fu_1005_p1;
assign grp_fu_1794_p1 = 10'd48;
assign grp_fu_1794_p2 = 21'd1261;
assign grp_fu_1803_p0 = zext_ln102_1_fu_1005_p1;
assign grp_fu_1803_p1 = 10'd56;
assign grp_fu_1803_p2 = 21'd1261;
assign grp_fu_999_p1 = 9'd13;
assign mul_ln102_fu_1011_p0 = mul_ln102_fu_1011_p00;
assign mul_ln102_fu_1011_p00 = offset_read_reg_1812_pp0_iter9_reg;
assign mul_ln102_fu_1011_p1 = 19'd631;
assign tmp_21_fu_1047_p1 = grp_fu_1749_p3;
assign tmp_21_fu_1047_p4 = {{tmp_21_fu_1047_p1[20:14]}};
assign tmp_22_fu_1073_p1 = grp_fu_1758_p3;
assign tmp_22_fu_1073_p4 = {{tmp_22_fu_1073_p1[20:14]}};
assign tmp_23_fu_1099_p1 = grp_fu_1767_p3;
assign tmp_23_fu_1099_p4 = {{tmp_23_fu_1099_p1[20:14]}};
assign tmp_24_fu_1125_p1 = grp_fu_1776_p3;
assign tmp_24_fu_1125_p4 = {{tmp_24_fu_1125_p1[20:14]}};
assign tmp_25_fu_1151_p1 = grp_fu_1785_p3;
assign tmp_25_fu_1151_p4 = {{tmp_25_fu_1151_p1[20:14]}};
assign tmp_26_fu_1177_p1 = grp_fu_1794_p3;
assign tmp_26_fu_1177_p4 = {{tmp_26_fu_1177_p1[20:14]}};
assign tmp_27_fu_1203_p1 = grp_fu_1803_p3;
assign tmp_27_fu_1203_p4 = {{tmp_27_fu_1203_p1[20:14]}};
assign trunc_ln103_fu_1027_p1 = grp_fu_999_p2[3:0];
assign x_0_address0 = x_0_address0_local;
assign x_0_ce0 = x_0_ce0_local;
assign x_10_address0 = x_10_address0_local;
assign x_10_ce0 = x_10_ce0_local;
assign x_11_address0 = x_11_address0_local;
assign x_11_ce0 = x_11_ce0_local;
assign x_12_address0 = x_12_address0_local;
assign x_12_ce0 = x_12_ce0_local;
assign x_1_address0 = x_1_address0_local;
assign x_1_ce0 = x_1_ce0_local;
assign x_2_address0 = x_2_address0_local;
assign x_2_ce0 = x_2_ce0_local;
assign x_3_address0 = x_3_address0_local;
assign x_3_ce0 = x_3_ce0_local;
assign x_4_address0 = x_4_address0_local;
assign x_4_ce0 = x_4_ce0_local;
assign x_5_address0 = x_5_address0_local;
assign x_5_ce0 = x_5_ce0_local;
assign x_6_address0 = x_6_address0_local;
assign x_6_ce0 = x_6_ce0_local;
assign x_7_address0 = x_7_address0_local;
assign x_7_ce0 = x_7_ce0_local;
assign x_8_address0 = x_8_address0_local;
assign x_8_ce0 = x_8_ce0_local;
assign x_9_address0 = x_9_address0_local;
assign x_9_ce0 = x_9_ce0_local;
assign zext_ln102_1_fu_1005_p1 = offset_read_reg_1812_pp0_iter9_reg;
assign zext_ln102_fu_1031_p1 = tmp_reg_1819_pp0_iter12_reg;
assign zext_ln104_fu_1056_p1 = tmp_21_fu_1047_p4;
assign zext_ln105_fu_1082_p1 = tmp_22_fu_1073_p4;
assign zext_ln106_fu_1108_p1 = tmp_23_fu_1099_p4;
assign zext_ln107_fu_1134_p1 = tmp_24_fu_1125_p4;
assign zext_ln108_fu_1160_p1 = tmp_25_fu_1151_p4;
assign zext_ln109_fu_1186_p1 = tmp_26_fu_1177_p4;
assign zext_ln110_fu_1212_p1 = tmp_27_fu_1203_p4;
endmodule 