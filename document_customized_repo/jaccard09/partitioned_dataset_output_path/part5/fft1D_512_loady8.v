
module fft1D_512_loady8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_ce,a_y_address0,a_y_ce0,a_y_we0,a_y_d0,a_y_address1,a_y_ce1,a_y_we1,a_y_d1,x_0_address0,x_0_ce0,x_0_q0,x_0_address1,x_0_ce1,x_0_q1,x_1_address0,x_1_ce0,x_1_q0,x_1_address1,x_1_ce1,x_1_q1,x_2_address0,x_2_ce0,x_2_q0,x_2_address1,x_2_ce1,x_2_q1,x_3_address0,x_3_ce0,x_3_q0,x_3_address1,x_3_ce1,x_3_q1,x_4_address0,x_4_ce0,x_4_q0,x_4_address1,x_4_ce1,x_4_q1,x_5_address0,x_5_ce0,x_5_q0,x_5_address1,x_5_ce1,x_5_q1,x_6_address0,x_6_ce0,x_6_q0,x_6_address1,x_6_ce1,x_6_q1,offset);  
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
input   ap_ce;
output  [2:0] a_y_address0;
output   a_y_ce0;
output   a_y_we0;
output  [63:0] a_y_d0;
output  [2:0] a_y_address1;
output   a_y_ce1;
output   a_y_we1;
output  [63:0] a_y_d1;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
reg    ap_block_pp0_stage3_subdone;
reg   [8:0] offset_read_reg_1199;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] offset_read_reg_1199_pp0_iter1_reg;
wire   [9:0] zext_ln102_1_fu_690_p1;
reg   [9:0] zext_ln102_1_reg_1206;
reg   [6:0] tmp_12_reg_1215;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] x_0_load_reg_1255;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] x_1_load_reg_1260;
reg   [63:0] x_2_load_reg_1265;
reg   [63:0] x_3_load_reg_1270;
reg   [63:0] x_4_load_reg_1275;
reg   [63:0] x_5_load_reg_1280;
reg   [63:0] x_6_load_reg_1285;
wire    ap_block_pp0_stage3_11001;
wire   [2:0] trunc_ln102_fu_762_p1;
reg   [2:0] trunc_ln102_reg_1360;
wire   [63:0] tmp_fu_766_p17;
reg   [63:0] tmp_reg_1369;
wire   [63:0] tmp_1_fu_795_p17;
reg   [63:0] tmp_1_reg_1374;
wire   [63:0] tmp_2_fu_831_p17;
reg   [63:0] tmp_2_reg_1379;
wire   [63:0] tmp_3_fu_907_p17;
reg   [63:0] tmp_3_reg_1454;
wire   [63:0] tmp_4_fu_942_p17;
reg   [63:0] tmp_4_reg_1459;
reg   [7:0] tmp_18_reg_1499;
wire   [63:0] tmp_5_fu_1006_p17;
reg   [63:0] tmp_5_reg_1504;
wire   [63:0] tmp_6_fu_1071_p17;
reg   [63:0] tmp_6_reg_1579;
wire   [63:0] tmp_7_fu_1106_p17;
reg   [63:0] tmp_7_reg_1584;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln102_fu_712_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln104_fu_731_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln105_fu_751_p1;
wire   [63:0] zext_ln106_fu_876_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln107_fu_896_p1;
wire   [63:0] zext_ln108_fu_986_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln109_fu_1041_p1;
wire   [63:0] zext_ln110_fu_1060_p1;
reg    x_0_ce1_local;
reg   [6:0] x_0_address1_local;
reg    x_0_ce0_local;
reg   [6:0] x_0_address0_local;
reg    x_1_ce1_local;
reg   [6:0] x_1_address1_local;
reg    x_1_ce0_local;
reg   [6:0] x_1_address0_local;
reg    x_2_ce1_local;
reg   [6:0] x_2_address1_local;
reg    x_2_ce0_local;
reg   [6:0] x_2_address0_local;
reg    x_3_ce1_local;
reg   [6:0] x_3_address1_local;
reg    x_3_ce0_local;
reg   [6:0] x_3_address0_local;
reg    x_4_ce1_local;
reg   [6:0] x_4_address1_local;
reg    x_4_ce0_local;
reg   [6:0] x_4_address0_local;
reg    x_5_ce1_local;
reg   [6:0] x_5_address1_local;
reg    x_5_ce0_local;
reg   [6:0] x_5_address0_local;
reg    x_6_ce1_local;
reg   [6:0] x_6_address1_local;
reg    x_6_ce0_local;
reg   [6:0] x_6_address0_local;
reg    a_y_we1_local;
reg   [63:0] a_y_d1_local;
reg    a_y_ce1_local;
reg   [2:0] a_y_address1_local;
reg    a_y_we0_local;
reg   [63:0] a_y_d0_local;
reg    a_y_ce0_local;
reg   [2:0] a_y_address0_local;
wire   [3:0] grp_fu_684_p1;
wire   [8:0] mul_ln102_fu_696_p0;
wire   [10:0] mul_ln102_fu_696_p1;
wire   [18:0] mul_ln102_fu_696_p2;
wire   [20:0] tmp_13_fu_722_p1;
wire  signed [20:0] grp_fu_1141_p3;
wire   [7:0] tmp_13_fu_722_p4;
wire   [20:0] tmp_14_fu_742_p1;
wire  signed [20:0] grp_fu_1150_p3;
wire   [7:0] tmp_14_fu_742_p4;
wire   [2:0] grp_fu_684_p2;
wire   [63:0] tmp_fu_766_p15;
wire   [63:0] tmp_1_fu_795_p15;
wire   [63:0] tmp_2_fu_831_p15;
wire   [20:0] tmp_15_fu_867_p1;
wire  signed [20:0] grp_fu_1159_p3;
wire   [7:0] tmp_15_fu_867_p4;
wire   [20:0] tmp_16_fu_887_p1;
wire  signed [20:0] grp_fu_1167_p3;
wire   [7:0] tmp_16_fu_887_p4;
wire   [63:0] tmp_3_fu_907_p15;
wire   [63:0] tmp_4_fu_942_p15;
wire   [20:0] tmp_17_fu_977_p1;
wire  signed [20:0] grp_fu_1175_p3;
wire   [7:0] tmp_17_fu_977_p4;
wire   [20:0] tmp_18_fu_997_p1;
wire  signed [20:0] grp_fu_1183_p3;
wire   [63:0] tmp_5_fu_1006_p15;
wire   [20:0] tmp_19_fu_1051_p1;
wire  signed [20:0] grp_fu_1191_p3;
wire   [7:0] tmp_19_fu_1051_p4;
wire   [63:0] tmp_6_fu_1071_p15;
wire   [63:0] tmp_7_fu_1106_p15;
wire   [8:0] grp_fu_1141_p0;
wire   [3:0] grp_fu_1141_p1;
wire   [10:0] grp_fu_1141_p2;
wire   [8:0] grp_fu_1150_p0;
wire   [4:0] grp_fu_1150_p1;
wire   [10:0] grp_fu_1150_p2;
wire   [8:0] grp_fu_1159_p0;
wire   [4:0] grp_fu_1159_p1;
wire   [10:0] grp_fu_1159_p2;
wire   [8:0] grp_fu_1167_p0;
wire   [5:0] grp_fu_1167_p1;
wire   [10:0] grp_fu_1167_p2;
wire   [8:0] grp_fu_1175_p0;
wire   [5:0] grp_fu_1175_p1;
wire   [10:0] grp_fu_1175_p2;
wire   [8:0] grp_fu_1183_p0;
wire   [5:0] grp_fu_1183_p1;
wire   [10:0] grp_fu_1183_p2;
wire   [8:0] grp_fu_1191_p0;
wire   [5:0] grp_fu_1191_p1;
wire   [10:0] grp_fu_1191_p2;
reg    grp_fu_684_ce;
reg    grp_fu_1141_ce;
reg    grp_fu_1150_ce;
reg    grp_fu_1159_ce;
reg    grp_fu_1167_ce;
reg    grp_fu_1175_ce;
reg    grp_fu_1183_ce;
reg    grp_fu_1191_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_0to3;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0_1to4;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire   [18:0] mul_ln102_fu_696_p00;
wire   [2:0] tmp_fu_766_p1;
wire   [2:0] tmp_fu_766_p3;
wire   [2:0] tmp_fu_766_p5;
wire   [2:0] tmp_fu_766_p7;
wire  signed [2:0] tmp_fu_766_p9;
wire  signed [2:0] tmp_fu_766_p11;
wire  signed [2:0] tmp_fu_766_p13;
wire  signed [2:0] tmp_1_fu_795_p1;
wire   [2:0] tmp_1_fu_795_p3;
wire   [2:0] tmp_1_fu_795_p5;
wire   [2:0] tmp_1_fu_795_p7;
wire   [2:0] tmp_1_fu_795_p9;
wire  signed [2:0] tmp_1_fu_795_p11;
wire  signed [2:0] tmp_1_fu_795_p13;
wire  signed [2:0] tmp_2_fu_831_p1;
wire  signed [2:0] tmp_2_fu_831_p3;
wire   [2:0] tmp_2_fu_831_p5;
wire   [2:0] tmp_2_fu_831_p7;
wire   [2:0] tmp_2_fu_831_p9;
wire   [2:0] tmp_2_fu_831_p11;
wire  signed [2:0] tmp_2_fu_831_p13;
wire  signed [2:0] tmp_3_fu_907_p1;
wire  signed [2:0] tmp_3_fu_907_p3;
wire  signed [2:0] tmp_3_fu_907_p5;
wire   [2:0] tmp_3_fu_907_p7;
wire   [2:0] tmp_3_fu_907_p9;
wire   [2:0] tmp_3_fu_907_p11;
wire   [2:0] tmp_3_fu_907_p13;
wire   [2:0] tmp_4_fu_942_p1;
wire  signed [2:0] tmp_4_fu_942_p3;
wire  signed [2:0] tmp_4_fu_942_p5;
wire  signed [2:0] tmp_4_fu_942_p7;
wire   [2:0] tmp_4_fu_942_p9;
wire   [2:0] tmp_4_fu_942_p11;
wire   [2:0] tmp_4_fu_942_p13;
wire   [2:0] tmp_5_fu_1006_p1;
wire   [2:0] tmp_5_fu_1006_p3;
wire  signed [2:0] tmp_5_fu_1006_p5;
wire  signed [2:0] tmp_5_fu_1006_p7;
wire  signed [2:0] tmp_5_fu_1006_p9;
wire   [2:0] tmp_5_fu_1006_p11;
wire   [2:0] tmp_5_fu_1006_p13;
wire   [2:0] tmp_6_fu_1071_p1;
wire   [2:0] tmp_6_fu_1071_p3;
wire   [2:0] tmp_6_fu_1071_p5;
wire  signed [2:0] tmp_6_fu_1071_p7;
wire  signed [2:0] tmp_6_fu_1071_p9;
wire  signed [2:0] tmp_6_fu_1071_p11;
wire   [2:0] tmp_6_fu_1071_p13;
wire   [2:0] tmp_7_fu_1106_p1;
wire   [2:0] tmp_7_fu_1106_p3;
wire   [2:0] tmp_7_fu_1106_p5;
wire   [2:0] tmp_7_fu_1106_p7;
wire  signed [2:0] tmp_7_fu_1106_p9;
wire  signed [2:0] tmp_7_fu_1106_p11;
wire  signed [2:0] tmp_7_fu_1106_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U136(.clk(ap_clk),.reset(ap_rst),.din0(offset),.din1(grp_fu_684_p1),.ce(grp_fu_684_ce),.dout(grp_fu_684_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U137(.din0(mul_ln102_fu_696_p0),.din1(mul_ln102_fu_696_p1),.dout(mul_ln102_fu_696_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U138(.din0(x_0_load_reg_1255),.din1(x_1_load_reg_1260),.din2(x_2_load_reg_1265),.din3(x_3_load_reg_1270),.din4(x_4_load_reg_1275),.din5(x_5_load_reg_1280),.din6(x_6_load_reg_1285),.def(tmp_fu_766_p15),.sel(trunc_ln102_fu_762_p1),.dout(tmp_fu_766_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U139(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(tmp_1_fu_795_p15),.sel(trunc_ln102_fu_762_p1),.dout(tmp_1_fu_795_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U140(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.din3(x_3_q1),.din4(x_4_q1),.din5(x_5_q1),.din6(x_6_q1),.def(tmp_2_fu_831_p15),.sel(trunc_ln102_fu_762_p1),.dout(tmp_2_fu_831_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U141(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.din3(x_3_q1),.din4(x_4_q1),.din5(x_5_q1),.din6(x_6_q1),.def(tmp_3_fu_907_p15),.sel(trunc_ln102_reg_1360),.dout(tmp_3_fu_907_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U142(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(tmp_4_fu_942_p15),.sel(trunc_ln102_reg_1360),.dout(tmp_4_fu_942_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U143(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(tmp_5_fu_1006_p15),.sel(trunc_ln102_reg_1360),.dout(tmp_5_fu_1006_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U144(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(tmp_6_fu_1071_p15),.sel(trunc_ln102_reg_1360),.dout(tmp_6_fu_1071_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U145(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.def(tmp_7_fu_1106_p15),.sel(trunc_ln102_reg_1360),.dout(tmp_7_fu_1106_p17));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U146(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1141_p0),.din1(grp_fu_1141_p1),.din2(grp_fu_1141_p2),.ce(grp_fu_1141_ce),.dout(grp_fu_1141_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U147(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1150_p0),.din1(grp_fu_1150_p1),.din2(grp_fu_1150_p2),.ce(grp_fu_1150_ce),.dout(grp_fu_1150_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U148(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1159_p0),.din1(grp_fu_1159_p1),.din2(grp_fu_1159_p2),.ce(grp_fu_1159_ce),.dout(grp_fu_1159_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U149(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1167_p0),.din1(grp_fu_1167_p1),.din2(grp_fu_1167_p2),.ce(grp_fu_1167_ce),.dout(grp_fu_1167_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U150(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1175_p0),.din1(grp_fu_1175_p1),.din2(grp_fu_1175_p2),.ce(grp_fu_1175_ce),.dout(grp_fu_1175_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U151(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1183_p0),.din1(grp_fu_1183_p1),.din2(grp_fu_1183_p2),.ce(grp_fu_1183_ce),.dout(grp_fu_1183_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U152(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1191_p0),.din1(grp_fu_1191_p1),.din2(grp_fu_1191_p2),.ce(grp_fu_1191_ce),.dout(grp_fu_1191_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_read_reg_1199 <= offset;
        offset_read_reg_1199_pp0_iter1_reg <= offset_read_reg_1199;
        tmp_12_reg_1215 <= {{mul_ln102_fu_696_p2[18:12]}};
        tmp_1_reg_1374 <= tmp_1_fu_795_p17;
        tmp_2_reg_1379 <= tmp_2_fu_831_p17;
        tmp_reg_1369 <= tmp_fu_766_p17;
        trunc_ln102_reg_1360 <= trunc_ln102_fu_762_p1;
        zext_ln102_1_reg_1206[8 : 0] <= zext_ln102_1_fu_690_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_18_reg_1499 <= {{tmp_18_fu_997_p1[20:13]}};
        tmp_3_reg_1454 <= tmp_3_fu_907_p17;
        tmp_4_reg_1459 <= tmp_4_fu_942_p17;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_5_reg_1504 <= tmp_5_fu_1006_p17;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_6_reg_1579 <= tmp_6_fu_1071_p17;
        tmp_7_reg_1584 <= tmp_7_fu_1106_p17;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_0_load_reg_1255 <= x_0_q1;
        x_1_load_reg_1260 <= x_1_q1;
        x_2_load_reg_1265 <= x_2_q1;
        x_3_load_reg_1270 <= x_3_q1;
        x_4_load_reg_1275 <= x_4_q1;
        x_5_load_reg_1280 <= x_5_q1;
        x_6_load_reg_1285 <= x_6_q1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_y_address0_local = 64'd7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_y_address0_local = 64'd5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_y_address0_local = 64'd3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_y_address0_local = 64'd1;
    end else begin
        a_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_y_address1_local = 64'd6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_y_address1_local = 64'd4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_y_address1_local = 64'd2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_y_address1_local = 64'd0;
    end else begin
        a_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_y_ce0_local = 1'b1;
    end else begin
        a_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_y_ce1_local = 1'b1;
    end else begin
        a_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_y_d0_local = tmp_7_reg_1584;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_y_d0_local = tmp_5_reg_1504;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_y_d0_local = tmp_3_reg_1454;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_y_d0_local = tmp_1_reg_1374;
    end else begin
        a_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_y_d1_local = tmp_6_reg_1579;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_y_d1_local = tmp_4_reg_1459;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_y_d1_local = tmp_2_reg_1379;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_y_d1_local = tmp_reg_1369;
    end else begin
        a_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_y_we0_local = 1'b1;
    end else begin
        a_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_y_we1_local = 1'b1;
    end else begin
        a_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
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
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1141_ce = 1'b1;
    end else begin
        grp_fu_1141_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1150_ce = 1'b1;
    end else begin
        grp_fu_1150_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1159_ce = 1'b1;
    end else begin
        grp_fu_1159_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1167_ce = 1'b1;
    end else begin
        grp_fu_1167_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1175_ce = 1'b1;
    end else begin
        grp_fu_1175_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1183_ce = 1'b1;
    end else begin
        grp_fu_1183_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1191_ce = 1'b1;
    end else begin
        grp_fu_1191_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_684_ce = 1'b1;
    end else begin
        grp_fu_684_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_0_address0_local = zext_ln110_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_0_address0_local = zext_ln109_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_0_address0_local = zext_ln108_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_0_address0_local = zext_ln107_fu_896_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_0_address0_local = zext_ln104_fu_731_p1;
    end else begin
        x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_0_address1_local = zext_ln106_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_0_address1_local = zext_ln105_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_0_address1_local = zext_ln102_fu_712_p1;
    end else begin
        x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd0) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_0_ce0_local = 1'b1;
    end else begin
        x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_0_ce1_local = 1'b1;
    end else begin
        x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_1_address0_local = zext_ln110_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_1_address0_local = zext_ln109_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_1_address0_local = zext_ln108_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_1_address0_local = zext_ln107_fu_896_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_1_address0_local = zext_ln104_fu_731_p1;
    end else begin
        x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_1_address1_local = zext_ln106_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_1_address1_local = zext_ln105_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_1_address1_local = zext_ln102_fu_712_p1;
    end else begin
        x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_1_ce0_local = 1'b1;
    end else begin
        x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_1_ce1_local = 1'b1;
    end else begin
        x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_2_address0_local = zext_ln110_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_2_address0_local = zext_ln109_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_2_address0_local = zext_ln108_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_2_address0_local = zext_ln107_fu_896_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_2_address0_local = zext_ln104_fu_731_p1;
    end else begin
        x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_2_address1_local = zext_ln106_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_2_address1_local = zext_ln105_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_2_address1_local = zext_ln102_fu_712_p1;
    end else begin
        x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd3) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_2_ce0_local = 1'b1;
    end else begin
        x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_2_ce1_local = 1'b1;
    end else begin
        x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_3_address0_local = zext_ln110_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_3_address0_local = zext_ln109_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_3_address0_local = zext_ln108_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_3_address0_local = zext_ln107_fu_896_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_3_address0_local = zext_ln104_fu_731_p1;
    end else begin
        x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_3_address1_local = zext_ln106_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_3_address1_local = zext_ln105_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_3_address1_local = zext_ln102_fu_712_p1;
    end else begin
        x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd4) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd3) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_3_ce0_local = 1'b1;
    end else begin
        x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_3_ce1_local = 1'b1;
    end else begin
        x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_4_address0_local = zext_ln110_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_4_address0_local = zext_ln109_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_4_address0_local = zext_ln108_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_4_address0_local = zext_ln107_fu_896_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_4_address0_local = zext_ln104_fu_731_p1;
    end else begin
        x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_4_address1_local = zext_ln106_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_4_address1_local = zext_ln105_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_4_address1_local = zext_ln102_fu_712_p1;
    end else begin
        x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd5) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd4) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_4_ce0_local = 1'b1;
    end else begin
        x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_4_ce1_local = 1'b1;
    end else begin
        x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_5_address0_local = zext_ln110_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_5_address0_local = zext_ln109_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_5_address0_local = zext_ln108_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_5_address0_local = zext_ln107_fu_896_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_5_address0_local = zext_ln104_fu_731_p1;
    end else begin
        x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_5_address1_local = zext_ln106_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_5_address1_local = zext_ln105_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_5_address1_local = zext_ln102_fu_712_p1;
    end else begin
        x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd6) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd5) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_5_ce0_local = 1'b1;
    end else begin
        x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_5_ce1_local = 1'b1;
    end else begin
        x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_6_address0_local = zext_ln110_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_6_address0_local = zext_ln109_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_6_address0_local = zext_ln108_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_6_address0_local = zext_ln107_fu_896_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_6_address0_local = zext_ln104_fu_731_p1;
    end else begin
        x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_6_address1_local = zext_ln106_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_6_address1_local = zext_ln105_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_6_address1_local = zext_ln102_fu_712_p1;
    end else begin
        x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd0) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln102_reg_1360 == 3'd6) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_6_ce0_local = 1'b1;
    end else begin
        x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_6_ce1_local = 1'b1;
    end else begin
        x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_reset_idle_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
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
assign a_y_address0 = a_y_address0_local;
assign a_y_address1 = a_y_address1_local;
assign a_y_ce0 = a_y_ce0_local;
assign a_y_ce1 = a_y_ce1_local;
assign a_y_d0 = a_y_d0_local;
assign a_y_d1 = a_y_d1_local;
assign a_y_we0 = a_y_we0_local;
assign a_y_we1 = a_y_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage1_subdone = (1'b0 == ap_ce);
end
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage2_subdone = (1'b0 == ap_ce);
end
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage3_subdone = (1'b0 == ap_ce);
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign grp_fu_1141_p0 = zext_ln102_1_fu_690_p1;
assign grp_fu_1141_p1 = 10'd8;
assign grp_fu_1141_p2 = 21'd1171;
assign grp_fu_1150_p0 = zext_ln102_1_fu_690_p1;
assign grp_fu_1150_p1 = 10'd16;
assign grp_fu_1150_p2 = 21'd1171;
assign grp_fu_1159_p0 = zext_ln102_1_reg_1206;
assign grp_fu_1159_p1 = 10'd24;
assign grp_fu_1159_p2 = 21'd1171;
assign grp_fu_1167_p0 = zext_ln102_1_reg_1206;
assign grp_fu_1167_p1 = 10'd32;
assign grp_fu_1167_p2 = 21'd1171;
assign grp_fu_1175_p0 = zext_ln102_1_reg_1206;
assign grp_fu_1175_p1 = 10'd40;
assign grp_fu_1175_p2 = 21'd1171;
assign grp_fu_1183_p0 = zext_ln102_1_reg_1206;
assign grp_fu_1183_p1 = 10'd48;
assign grp_fu_1183_p2 = 21'd1171;
assign grp_fu_1191_p0 = zext_ln102_1_reg_1206;
assign grp_fu_1191_p1 = 10'd56;
assign grp_fu_1191_p2 = 21'd1171;
assign grp_fu_684_p1 = 9'd7;
assign mul_ln102_fu_696_p0 = mul_ln102_fu_696_p00;
assign mul_ln102_fu_696_p00 = offset_read_reg_1199_pp0_iter1_reg;
assign mul_ln102_fu_696_p1 = 19'd586;
assign tmp_13_fu_722_p1 = grp_fu_1141_p3;
assign tmp_13_fu_722_p4 = {{tmp_13_fu_722_p1[20:13]}};
assign tmp_14_fu_742_p1 = grp_fu_1150_p3;
assign tmp_14_fu_742_p4 = {{tmp_14_fu_742_p1[20:13]}};
assign tmp_15_fu_867_p1 = grp_fu_1159_p3;
assign tmp_15_fu_867_p4 = {{tmp_15_fu_867_p1[20:13]}};
assign tmp_16_fu_887_p1 = grp_fu_1167_p3;
assign tmp_16_fu_887_p4 = {{tmp_16_fu_887_p1[20:13]}};
assign tmp_17_fu_977_p1 = grp_fu_1175_p3;
assign tmp_17_fu_977_p4 = {{tmp_17_fu_977_p1[20:13]}};
assign tmp_18_fu_997_p1 = grp_fu_1183_p3;
assign tmp_19_fu_1051_p1 = grp_fu_1191_p3;
assign tmp_19_fu_1051_p4 = {{tmp_19_fu_1051_p1[20:13]}};
assign tmp_1_fu_795_p15 = 'bx;
assign tmp_2_fu_831_p15 = 'bx;
assign tmp_3_fu_907_p15 = 'bx;
assign tmp_4_fu_942_p15 = 'bx;
assign tmp_5_fu_1006_p15 = 'bx;
assign tmp_6_fu_1071_p15 = 'bx;
assign tmp_7_fu_1106_p15 = 'bx;
assign tmp_fu_766_p15 = 'bx;
assign trunc_ln102_fu_762_p1 = grp_fu_684_p2[2:0];
assign x_0_address0 = x_0_address0_local;
assign x_0_address1 = x_0_address1_local;
assign x_0_ce0 = x_0_ce0_local;
assign x_0_ce1 = x_0_ce1_local;
assign x_1_address0 = x_1_address0_local;
assign x_1_address1 = x_1_address1_local;
assign x_1_ce0 = x_1_ce0_local;
assign x_1_ce1 = x_1_ce1_local;
assign x_2_address0 = x_2_address0_local;
assign x_2_address1 = x_2_address1_local;
assign x_2_ce0 = x_2_ce0_local;
assign x_2_ce1 = x_2_ce1_local;
assign x_3_address0 = x_3_address0_local;
assign x_3_address1 = x_3_address1_local;
assign x_3_ce0 = x_3_ce0_local;
assign x_3_ce1 = x_3_ce1_local;
assign x_4_address0 = x_4_address0_local;
assign x_4_address1 = x_4_address1_local;
assign x_4_ce0 = x_4_ce0_local;
assign x_4_ce1 = x_4_ce1_local;
assign x_5_address0 = x_5_address0_local;
assign x_5_address1 = x_5_address1_local;
assign x_5_ce0 = x_5_ce0_local;
assign x_5_ce1 = x_5_ce1_local;
assign x_6_address0 = x_6_address0_local;
assign x_6_address1 = x_6_address1_local;
assign x_6_ce0 = x_6_ce0_local;
assign x_6_ce1 = x_6_ce1_local;
assign zext_ln102_1_fu_690_p1 = offset_read_reg_1199_pp0_iter1_reg;
assign zext_ln102_fu_712_p1 = tmp_12_reg_1215;
assign zext_ln104_fu_731_p1 = tmp_13_fu_722_p4;
assign zext_ln105_fu_751_p1 = tmp_14_fu_742_p4;
assign zext_ln106_fu_876_p1 = tmp_15_fu_867_p4;
assign zext_ln107_fu_896_p1 = tmp_16_fu_887_p4;
assign zext_ln108_fu_986_p1 = tmp_17_fu_977_p4;
assign zext_ln109_fu_1041_p1 = tmp_18_reg_1499;
assign zext_ln110_fu_1060_p1 = tmp_19_fu_1051_p4;
always @ (posedge ap_clk) begin
    zext_ln102_1_reg_1206[9] <= 1'b0;
end
endmodule 
