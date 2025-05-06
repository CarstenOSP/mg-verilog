
module fft1D_512_loady8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_ce,x_0_address0,x_0_ce0,x_0_q0,x_1_address0,x_1_ce0,x_1_q0,x_2_address0,x_2_ce0,x_2_q0,x_3_address0,x_3_ce0,x_3_q0,x_4_address0,x_4_ce0,x_4_q0,x_5_address0,x_5_ce0,x_5_q0,x_6_address0,x_6_ce0,x_6_q0,x_7_address0,x_7_ce0,x_7_q0,x_8_address0,x_8_ce0,x_8_q0,offset,ap_return_0,ap_return_1,ap_return_2,ap_return_3,ap_return_4,ap_return_5,ap_return_6,ap_return_7);  
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
reg   [8:0] offset_read_reg_1360;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] offset_read_reg_1360_pp0_iter1_reg;
reg   [8:0] offset_read_reg_1360_pp0_iter2_reg;
reg   [8:0] offset_read_reg_1360_pp0_iter3_reg;
reg   [8:0] offset_read_reg_1360_pp0_iter4_reg;
reg   [8:0] offset_read_reg_1360_pp0_iter5_reg;
reg   [8:0] offset_read_reg_1360_pp0_iter6_reg;
reg   [8:0] offset_read_reg_1360_pp0_iter7_reg;
reg   [8:0] offset_read_reg_1360_pp0_iter8_reg;
reg   [8:0] offset_read_reg_1360_pp0_iter9_reg;
reg   [5:0] tmp_reg_1367;
reg   [5:0] tmp_reg_1367_pp0_iter11_reg;
reg   [5:0] tmp_reg_1367_pp0_iter12_reg;
wire   [3:0] trunc_ln103_fu_735_p1;
reg   [3:0] trunc_ln103_reg_1372;
reg   [3:0] trunc_ln103_reg_1372_pp0_iter13_reg;
wire   [63:0] zext_ln102_fu_739_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln104_fu_760_p1;
wire   [63:0] zext_ln105_fu_782_p1;
wire   [63:0] zext_ln106_fu_804_p1;
wire   [63:0] zext_ln107_fu_826_p1;
wire   [63:0] zext_ln108_fu_848_p1;
wire   [63:0] zext_ln109_fu_870_p1;
wire   [63:0] zext_ln110_fu_892_p1;
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
wire   [4:0] grp_fu_707_p1;
wire   [8:0] mul_ln102_fu_719_p0;
wire   [10:0] mul_ln102_fu_719_p1;
wire   [18:0] mul_ln102_fu_719_p2;
wire   [3:0] grp_fu_707_p2;
wire   [20:0] tmp_21_fu_751_p1;
wire  signed [20:0] grp_fu_1297_p3;
wire   [6:0] tmp_21_fu_751_p4;
wire   [20:0] tmp_22_fu_773_p1;
wire  signed [20:0] grp_fu_1306_p3;
wire   [6:0] tmp_22_fu_773_p4;
wire   [20:0] tmp_23_fu_795_p1;
wire  signed [20:0] grp_fu_1315_p3;
wire   [6:0] tmp_23_fu_795_p4;
wire   [20:0] tmp_24_fu_817_p1;
wire  signed [20:0] grp_fu_1324_p3;
wire   [6:0] tmp_24_fu_817_p4;
wire   [20:0] tmp_25_fu_839_p1;
wire  signed [20:0] grp_fu_1333_p3;
wire   [6:0] tmp_25_fu_839_p4;
wire   [20:0] tmp_26_fu_861_p1;
wire  signed [20:0] grp_fu_1342_p3;
wire   [6:0] tmp_26_fu_861_p4;
wire   [20:0] tmp_27_fu_883_p1;
wire  signed [20:0] grp_fu_1351_p3;
wire   [6:0] tmp_27_fu_883_p4;
wire   [63:0] a_y_fu_905_p19;
wire   [63:0] a_y_1_fu_948_p19;
wire   [63:0] a_y_2_fu_991_p19;
wire   [63:0] a_y_3_fu_1034_p19;
wire   [63:0] a_y_4_fu_1077_p19;
wire   [63:0] a_y_5_fu_1120_p19;
wire   [63:0] a_y_6_fu_1163_p19;
wire   [63:0] a_y_7_fu_1206_p19;
wire   [63:0] a_y_fu_905_p21;
wire   [63:0] a_y_1_fu_948_p21;
wire   [63:0] a_y_2_fu_991_p21;
wire   [63:0] a_y_3_fu_1034_p21;
wire   [63:0] a_y_4_fu_1077_p21;
wire   [63:0] a_y_5_fu_1120_p21;
wire   [63:0] a_y_6_fu_1163_p21;
wire   [63:0] a_y_7_fu_1206_p21;
wire   [8:0] grp_fu_1297_p0;
wire   [9:0] zext_ln102_1_fu_713_p1;
wire   [3:0] grp_fu_1297_p1;
wire   [10:0] grp_fu_1297_p2;
wire   [8:0] grp_fu_1306_p0;
wire   [4:0] grp_fu_1306_p1;
wire   [10:0] grp_fu_1306_p2;
wire   [8:0] grp_fu_1315_p0;
wire   [4:0] grp_fu_1315_p1;
wire   [10:0] grp_fu_1315_p2;
wire   [8:0] grp_fu_1324_p0;
wire   [5:0] grp_fu_1324_p1;
wire   [10:0] grp_fu_1324_p2;
wire   [8:0] grp_fu_1333_p0;
wire   [5:0] grp_fu_1333_p1;
wire   [10:0] grp_fu_1333_p2;
wire   [8:0] grp_fu_1342_p0;
wire   [5:0] grp_fu_1342_p1;
wire   [10:0] grp_fu_1342_p2;
wire   [8:0] grp_fu_1351_p0;
wire   [5:0] grp_fu_1351_p1;
wire   [10:0] grp_fu_1351_p2;
reg    grp_fu_707_ce;
reg    grp_fu_1297_ce;
reg    grp_fu_1306_ce;
reg    grp_fu_1315_ce;
reg    grp_fu_1324_ce;
reg    grp_fu_1333_ce;
reg    grp_fu_1342_ce;
reg    grp_fu_1351_ce;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to13;
reg    ap_reset_idle_pp0;
reg    ap_reset_start_pp0;
wire    ap_enable_pp0;
wire   [18:0] mul_ln102_fu_719_p00;
wire   [3:0] a_y_fu_905_p1;
wire   [3:0] a_y_fu_905_p3;
wire   [3:0] a_y_fu_905_p5;
wire   [3:0] a_y_fu_905_p7;
wire   [3:0] a_y_fu_905_p9;
wire   [3:0] a_y_fu_905_p11;
wire   [3:0] a_y_fu_905_p13;
wire   [3:0] a_y_fu_905_p15;
wire  signed [3:0] a_y_fu_905_p17;
wire   [3:0] a_y_1_fu_948_p1;
wire   [3:0] a_y_1_fu_948_p3;
wire   [3:0] a_y_1_fu_948_p5;
wire   [3:0] a_y_1_fu_948_p7;
wire   [3:0] a_y_1_fu_948_p9;
wire   [3:0] a_y_1_fu_948_p11;
wire   [3:0] a_y_1_fu_948_p13;
wire  signed [3:0] a_y_1_fu_948_p15;
wire   [3:0] a_y_1_fu_948_p17;
wire   [3:0] a_y_2_fu_991_p1;
wire   [3:0] a_y_2_fu_991_p3;
wire   [3:0] a_y_2_fu_991_p5;
wire   [3:0] a_y_2_fu_991_p7;
wire   [3:0] a_y_2_fu_991_p9;
wire   [3:0] a_y_2_fu_991_p11;
wire  signed [3:0] a_y_2_fu_991_p13;
wire   [3:0] a_y_2_fu_991_p15;
wire   [3:0] a_y_2_fu_991_p17;
wire   [3:0] a_y_3_fu_1034_p1;
wire   [3:0] a_y_3_fu_1034_p3;
wire   [3:0] a_y_3_fu_1034_p5;
wire   [3:0] a_y_3_fu_1034_p7;
wire   [3:0] a_y_3_fu_1034_p9;
wire  signed [3:0] a_y_3_fu_1034_p11;
wire   [3:0] a_y_3_fu_1034_p13;
wire   [3:0] a_y_3_fu_1034_p15;
wire   [3:0] a_y_3_fu_1034_p17;
wire   [3:0] a_y_4_fu_1077_p1;
wire   [3:0] a_y_4_fu_1077_p3;
wire   [3:0] a_y_4_fu_1077_p5;
wire   [3:0] a_y_4_fu_1077_p7;
wire  signed [3:0] a_y_4_fu_1077_p9;
wire   [3:0] a_y_4_fu_1077_p11;
wire   [3:0] a_y_4_fu_1077_p13;
wire   [3:0] a_y_4_fu_1077_p15;
wire   [3:0] a_y_4_fu_1077_p17;
wire   [3:0] a_y_5_fu_1120_p1;
wire   [3:0] a_y_5_fu_1120_p3;
wire   [3:0] a_y_5_fu_1120_p5;
wire  signed [3:0] a_y_5_fu_1120_p7;
wire   [3:0] a_y_5_fu_1120_p9;
wire   [3:0] a_y_5_fu_1120_p11;
wire   [3:0] a_y_5_fu_1120_p13;
wire   [3:0] a_y_5_fu_1120_p15;
wire   [3:0] a_y_5_fu_1120_p17;
wire   [3:0] a_y_6_fu_1163_p1;
wire   [3:0] a_y_6_fu_1163_p3;
wire  signed [3:0] a_y_6_fu_1163_p5;
wire   [3:0] a_y_6_fu_1163_p7;
wire   [3:0] a_y_6_fu_1163_p9;
wire   [3:0] a_y_6_fu_1163_p11;
wire   [3:0] a_y_6_fu_1163_p13;
wire   [3:0] a_y_6_fu_1163_p15;
wire   [3:0] a_y_6_fu_1163_p17;
wire   [3:0] a_y_7_fu_1206_p1;
wire  signed [3:0] a_y_7_fu_1206_p3;
wire   [3:0] a_y_7_fu_1206_p5;
wire   [3:0] a_y_7_fu_1206_p7;
wire   [3:0] a_y_7_fu_1206_p9;
wire   [3:0] a_y_7_fu_1206_p11;
wire   [3:0] a_y_7_fu_1206_p13;
wire   [3:0] a_y_7_fu_1206_p15;
wire   [3:0] a_y_7_fu_1206_p17;
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
urem_9ns_5ns_4_13_1_U568(.clk(ap_clk),.reset(ap_rst),.din0(offset),.din1(grp_fu_707_p1),.ce(grp_fu_707_ce),.dout(grp_fu_707_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U569(.din0(mul_ln102_fu_719_p0),.din1(mul_ln102_fu_719_p1),.dout(mul_ln102_fu_719_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U570(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.def(a_y_fu_905_p19),.sel(trunc_ln103_reg_1372_pp0_iter13_reg),.dout(a_y_fu_905_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U571(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.def(a_y_1_fu_948_p19),.sel(trunc_ln103_reg_1372_pp0_iter13_reg),.dout(a_y_1_fu_948_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U572(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.def(a_y_2_fu_991_p19),.sel(trunc_ln103_reg_1372_pp0_iter13_reg),.dout(a_y_2_fu_991_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U573(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.def(a_y_3_fu_1034_p19),.sel(trunc_ln103_reg_1372_pp0_iter13_reg),.dout(a_y_3_fu_1034_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U574(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.def(a_y_4_fu_1077_p19),.sel(trunc_ln103_reg_1372_pp0_iter13_reg),.dout(a_y_4_fu_1077_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U575(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.def(a_y_5_fu_1120_p19),.sel(trunc_ln103_reg_1372_pp0_iter13_reg),.dout(a_y_5_fu_1120_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U576(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.def(a_y_6_fu_1163_p19),.sel(trunc_ln103_reg_1372_pp0_iter13_reg),.dout(a_y_6_fu_1163_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U577(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.def(a_y_7_fu_1206_p19),.sel(trunc_ln103_reg_1372_pp0_iter13_reg),.dout(a_y_7_fu_1206_p21));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U578(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1297_p0),.din1(grp_fu_1297_p1),.din2(grp_fu_1297_p2),.ce(grp_fu_1297_ce),.dout(grp_fu_1297_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U579(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1306_p0),.din1(grp_fu_1306_p1),.din2(grp_fu_1306_p2),.ce(grp_fu_1306_ce),.dout(grp_fu_1306_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U580(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1315_p0),.din1(grp_fu_1315_p1),.din2(grp_fu_1315_p2),.ce(grp_fu_1315_ce),.dout(grp_fu_1315_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U581(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1324_p0),.din1(grp_fu_1324_p1),.din2(grp_fu_1324_p2),.ce(grp_fu_1324_ce),.dout(grp_fu_1324_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U582(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1333_p0),.din1(grp_fu_1333_p1),.din2(grp_fu_1333_p2),.ce(grp_fu_1333_ce),.dout(grp_fu_1333_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U583(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1342_p0),.din1(grp_fu_1342_p1),.din2(grp_fu_1342_p2),.ce(grp_fu_1342_ce),.dout(grp_fu_1342_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U584(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1351_p0),.din1(grp_fu_1351_p1),.din2(grp_fu_1351_p2),.ce(grp_fu_1351_ce),.dout(grp_fu_1351_p3));
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
        offset_read_reg_1360 <= offset;
        offset_read_reg_1360_pp0_iter1_reg <= offset_read_reg_1360;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        offset_read_reg_1360_pp0_iter2_reg <= offset_read_reg_1360_pp0_iter1_reg;
        offset_read_reg_1360_pp0_iter3_reg <= offset_read_reg_1360_pp0_iter2_reg;
        offset_read_reg_1360_pp0_iter4_reg <= offset_read_reg_1360_pp0_iter3_reg;
        offset_read_reg_1360_pp0_iter5_reg <= offset_read_reg_1360_pp0_iter4_reg;
        offset_read_reg_1360_pp0_iter6_reg <= offset_read_reg_1360_pp0_iter5_reg;
        offset_read_reg_1360_pp0_iter7_reg <= offset_read_reg_1360_pp0_iter6_reg;
        offset_read_reg_1360_pp0_iter8_reg <= offset_read_reg_1360_pp0_iter7_reg;
        offset_read_reg_1360_pp0_iter9_reg <= offset_read_reg_1360_pp0_iter8_reg;
        tmp_reg_1367 <= {{mul_ln102_fu_719_p2[18:13]}};
        tmp_reg_1367_pp0_iter11_reg <= tmp_reg_1367;
        tmp_reg_1367_pp0_iter12_reg <= tmp_reg_1367_pp0_iter11_reg;
        trunc_ln103_reg_1372 <= trunc_ln103_fu_735_p1;
        trunc_ln103_reg_1372_pp0_iter13_reg <= trunc_ln103_reg_1372;
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
        grp_fu_1297_ce = 1'b1;
    end else begin
        grp_fu_1297_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1306_ce = 1'b1;
    end else begin
        grp_fu_1306_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1315_ce = 1'b1;
    end else begin
        grp_fu_1315_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1324_ce = 1'b1;
    end else begin
        grp_fu_1324_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1333_ce = 1'b1;
    end else begin
        grp_fu_1333_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1342_ce = 1'b1;
    end else begin
        grp_fu_1342_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1351_ce = 1'b1;
    end else begin
        grp_fu_1351_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_707_ce = 1'b1;
    end else begin
        grp_fu_707_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1372 == 4'd7)) begin
            x_0_address0_local = zext_ln110_fu_892_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd6)) begin
            x_0_address0_local = zext_ln109_fu_870_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd5)) begin
            x_0_address0_local = zext_ln108_fu_848_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd4)) begin
            x_0_address0_local = zext_ln107_fu_826_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd3)) begin
            x_0_address0_local = zext_ln106_fu_804_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd2)) begin
            x_0_address0_local = zext_ln105_fu_782_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd1)) begin
            x_0_address0_local = zext_ln104_fu_760_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd0)) begin
            x_0_address0_local = zext_ln102_fu_739_p1;
        end else begin
            x_0_address0_local = 'bx;
        end
    end else begin
        x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd0)))) begin
        x_0_ce0_local = 1'b1;
    end else begin
        x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1372 == 4'd8)) begin
            x_1_address0_local = zext_ln110_fu_892_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd7)) begin
            x_1_address0_local = zext_ln109_fu_870_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd6)) begin
            x_1_address0_local = zext_ln108_fu_848_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd5)) begin
            x_1_address0_local = zext_ln107_fu_826_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd4)) begin
            x_1_address0_local = zext_ln106_fu_804_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd3)) begin
            x_1_address0_local = zext_ln105_fu_782_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd2)) begin
            x_1_address0_local = zext_ln104_fu_760_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd1)) begin
            x_1_address0_local = zext_ln102_fu_739_p1;
        end else begin
            x_1_address0_local = 'bx;
        end
    end else begin
        x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd1)))) begin
        x_1_ce0_local = 1'b1;
    end else begin
        x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1372 == 4'd0)) begin
            x_2_address0_local = zext_ln110_fu_892_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd8)) begin
            x_2_address0_local = zext_ln109_fu_870_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd7)) begin
            x_2_address0_local = zext_ln108_fu_848_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd6)) begin
            x_2_address0_local = zext_ln107_fu_826_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd5)) begin
            x_2_address0_local = zext_ln106_fu_804_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd4)) begin
            x_2_address0_local = zext_ln105_fu_782_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd3)) begin
            x_2_address0_local = zext_ln104_fu_760_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd2)) begin
            x_2_address0_local = zext_ln102_fu_739_p1;
        end else begin
            x_2_address0_local = 'bx;
        end
    end else begin
        x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd0)))) begin
        x_2_ce0_local = 1'b1;
    end else begin
        x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1372 == 4'd1)) begin
            x_3_address0_local = zext_ln110_fu_892_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd0)) begin
            x_3_address0_local = zext_ln109_fu_870_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd8)) begin
            x_3_address0_local = zext_ln108_fu_848_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd7)) begin
            x_3_address0_local = zext_ln107_fu_826_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd6)) begin
            x_3_address0_local = zext_ln106_fu_804_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd5)) begin
            x_3_address0_local = zext_ln105_fu_782_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd4)) begin
            x_3_address0_local = zext_ln104_fu_760_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd3)) begin
            x_3_address0_local = zext_ln102_fu_739_p1;
        end else begin
            x_3_address0_local = 'bx;
        end
    end else begin
        x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd0)))) begin
        x_3_ce0_local = 1'b1;
    end else begin
        x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1372 == 4'd2)) begin
            x_4_address0_local = zext_ln110_fu_892_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd1)) begin
            x_4_address0_local = zext_ln109_fu_870_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd0)) begin
            x_4_address0_local = zext_ln108_fu_848_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd8)) begin
            x_4_address0_local = zext_ln107_fu_826_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd7)) begin
            x_4_address0_local = zext_ln106_fu_804_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd6)) begin
            x_4_address0_local = zext_ln105_fu_782_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd5)) begin
            x_4_address0_local = zext_ln104_fu_760_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd4)) begin
            x_4_address0_local = zext_ln102_fu_739_p1;
        end else begin
            x_4_address0_local = 'bx;
        end
    end else begin
        x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd0)))) begin
        x_4_ce0_local = 1'b1;
    end else begin
        x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1372 == 4'd3)) begin
            x_5_address0_local = zext_ln110_fu_892_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd2)) begin
            x_5_address0_local = zext_ln109_fu_870_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd1)) begin
            x_5_address0_local = zext_ln108_fu_848_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd0)) begin
            x_5_address0_local = zext_ln107_fu_826_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd8)) begin
            x_5_address0_local = zext_ln106_fu_804_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd7)) begin
            x_5_address0_local = zext_ln105_fu_782_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd6)) begin
            x_5_address0_local = zext_ln104_fu_760_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd5)) begin
            x_5_address0_local = zext_ln102_fu_739_p1;
        end else begin
            x_5_address0_local = 'bx;
        end
    end else begin
        x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd0)))) begin
        x_5_ce0_local = 1'b1;
    end else begin
        x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1372 == 4'd4)) begin
            x_6_address0_local = zext_ln110_fu_892_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd3)) begin
            x_6_address0_local = zext_ln109_fu_870_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd2)) begin
            x_6_address0_local = zext_ln108_fu_848_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd1)) begin
            x_6_address0_local = zext_ln107_fu_826_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd0)) begin
            x_6_address0_local = zext_ln106_fu_804_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd8)) begin
            x_6_address0_local = zext_ln105_fu_782_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd7)) begin
            x_6_address0_local = zext_ln104_fu_760_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd6)) begin
            x_6_address0_local = zext_ln102_fu_739_p1;
        end else begin
            x_6_address0_local = 'bx;
        end
    end else begin
        x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd0)))) begin
        x_6_ce0_local = 1'b1;
    end else begin
        x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1372 == 4'd5)) begin
            x_7_address0_local = zext_ln110_fu_892_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd4)) begin
            x_7_address0_local = zext_ln109_fu_870_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd3)) begin
            x_7_address0_local = zext_ln108_fu_848_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd2)) begin
            x_7_address0_local = zext_ln107_fu_826_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd1)) begin
            x_7_address0_local = zext_ln106_fu_804_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd0)) begin
            x_7_address0_local = zext_ln105_fu_782_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd8)) begin
            x_7_address0_local = zext_ln104_fu_760_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd7)) begin
            x_7_address0_local = zext_ln102_fu_739_p1;
        end else begin
            x_7_address0_local = 'bx;
        end
    end else begin
        x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd0)))) begin
        x_7_ce0_local = 1'b1;
    end else begin
        x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln103_reg_1372 == 4'd6)) begin
            x_8_address0_local = zext_ln110_fu_892_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd5)) begin
            x_8_address0_local = zext_ln109_fu_870_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd4)) begin
            x_8_address0_local = zext_ln108_fu_848_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd3)) begin
            x_8_address0_local = zext_ln107_fu_826_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd2)) begin
            x_8_address0_local = zext_ln106_fu_804_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd1)) begin
            x_8_address0_local = zext_ln105_fu_782_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd0)) begin
            x_8_address0_local = zext_ln104_fu_760_p1;
        end else if ((trunc_ln103_reg_1372 == 4'd8)) begin
            x_8_address0_local = zext_ln102_fu_739_p1;
        end else begin
            x_8_address0_local = 'bx;
        end
    end else begin
        x_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_ce) & (trunc_ln103_reg_1372 == 4'd0)))) begin
        x_8_ce0_local = 1'b1;
    end else begin
        x_8_ce0_local = 1'b0;
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
assign a_y_1_fu_948_p19 = 'bx;
assign a_y_2_fu_991_p19 = 'bx;
assign a_y_3_fu_1034_p19 = 'bx;
assign a_y_4_fu_1077_p19 = 'bx;
assign a_y_5_fu_1120_p19 = 'bx;
assign a_y_6_fu_1163_p19 = 'bx;
assign a_y_7_fu_1206_p19 = 'bx;
assign a_y_fu_905_p19 = 'bx;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start;
assign ap_return_0 = a_y_fu_905_p21;
assign ap_return_1 = a_y_1_fu_948_p21;
assign ap_return_2 = a_y_2_fu_991_p21;
assign ap_return_3 = a_y_3_fu_1034_p21;
assign ap_return_4 = a_y_4_fu_1077_p21;
assign ap_return_5 = a_y_5_fu_1120_p21;
assign ap_return_6 = a_y_6_fu_1163_p21;
assign ap_return_7 = a_y_7_fu_1206_p21;
assign grp_fu_1297_p0 = zext_ln102_1_fu_713_p1;
assign grp_fu_1297_p1 = 10'd8;
assign grp_fu_1297_p2 = 21'd1821;
assign grp_fu_1306_p0 = zext_ln102_1_fu_713_p1;
assign grp_fu_1306_p1 = 10'd16;
assign grp_fu_1306_p2 = 21'd1821;
assign grp_fu_1315_p0 = zext_ln102_1_fu_713_p1;
assign grp_fu_1315_p1 = 10'd24;
assign grp_fu_1315_p2 = 21'd1821;
assign grp_fu_1324_p0 = zext_ln102_1_fu_713_p1;
assign grp_fu_1324_p1 = 10'd32;
assign grp_fu_1324_p2 = 21'd1821;
assign grp_fu_1333_p0 = zext_ln102_1_fu_713_p1;
assign grp_fu_1333_p1 = 10'd40;
assign grp_fu_1333_p2 = 21'd1821;
assign grp_fu_1342_p0 = zext_ln102_1_fu_713_p1;
assign grp_fu_1342_p1 = 10'd48;
assign grp_fu_1342_p2 = 21'd1821;
assign grp_fu_1351_p0 = zext_ln102_1_fu_713_p1;
assign grp_fu_1351_p1 = 10'd56;
assign grp_fu_1351_p2 = 21'd1821;
assign grp_fu_707_p1 = 9'd9;
assign mul_ln102_fu_719_p0 = mul_ln102_fu_719_p00;
assign mul_ln102_fu_719_p00 = offset_read_reg_1360_pp0_iter9_reg;
assign mul_ln102_fu_719_p1 = 19'd911;
assign tmp_21_fu_751_p1 = grp_fu_1297_p3;
assign tmp_21_fu_751_p4 = {{tmp_21_fu_751_p1[20:14]}};
assign tmp_22_fu_773_p1 = grp_fu_1306_p3;
assign tmp_22_fu_773_p4 = {{tmp_22_fu_773_p1[20:14]}};
assign tmp_23_fu_795_p1 = grp_fu_1315_p3;
assign tmp_23_fu_795_p4 = {{tmp_23_fu_795_p1[20:14]}};
assign tmp_24_fu_817_p1 = grp_fu_1324_p3;
assign tmp_24_fu_817_p4 = {{tmp_24_fu_817_p1[20:14]}};
assign tmp_25_fu_839_p1 = grp_fu_1333_p3;
assign tmp_25_fu_839_p4 = {{tmp_25_fu_839_p1[20:14]}};
assign tmp_26_fu_861_p1 = grp_fu_1342_p3;
assign tmp_26_fu_861_p4 = {{tmp_26_fu_861_p1[20:14]}};
assign tmp_27_fu_883_p1 = grp_fu_1351_p3;
assign tmp_27_fu_883_p4 = {{tmp_27_fu_883_p1[20:14]}};
assign trunc_ln103_fu_735_p1 = grp_fu_707_p2[3:0];
assign x_0_address0 = x_0_address0_local;
assign x_0_ce0 = x_0_ce0_local;
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
assign zext_ln102_1_fu_713_p1 = offset_read_reg_1360_pp0_iter9_reg;
assign zext_ln102_fu_739_p1 = tmp_reg_1367_pp0_iter12_reg;
assign zext_ln104_fu_760_p1 = tmp_21_fu_751_p4;
assign zext_ln105_fu_782_p1 = tmp_22_fu_773_p4;
assign zext_ln106_fu_804_p1 = tmp_23_fu_795_p4;
assign zext_ln107_fu_826_p1 = tmp_24_fu_817_p4;
assign zext_ln108_fu_848_p1 = tmp_25_fu_839_p4;
assign zext_ln109_fu_870_p1 = tmp_26_fu_861_p4;
assign zext_ln110_fu_892_p1 = tmp_27_fu_883_p4;
endmodule 
