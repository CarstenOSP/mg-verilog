
module fft1D_512_loady8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_ce,a_y_address0,a_y_ce0,a_y_we0,a_y_d0,a_y_address1,a_y_ce1,a_y_we1,a_y_d1,x_0_address0,x_0_ce0,x_0_q0,x_0_address1,x_0_ce1,x_0_q1,x_1_address0,x_1_ce0,x_1_q0,x_1_address1,x_1_ce1,x_1_q1,x_2_address0,x_2_ce0,x_2_q0,x_2_address1,x_2_ce1,x_2_q1,x_3_address0,x_3_ce0,x_3_q0,x_3_address1,x_3_ce1,x_3_q1,x_4_address0,x_4_ce0,x_4_q0,x_4_address1,x_4_ce1,x_4_q1,x_5_address0,x_5_ce0,x_5_q0,x_5_address1,x_5_ce1,x_5_q1,x_6_address0,x_6_ce0,x_6_q0,x_6_address1,x_6_ce1,x_6_q1,x_7_address0,x_7_ce0,x_7_q0,x_7_address1,x_7_ce1,x_7_q1,x_8_address0,x_8_ce0,x_8_q0,x_8_address1,x_8_ce1,x_8_q1,x_9_address0,x_9_ce0,x_9_q0,x_9_address1,x_9_ce1,x_9_q1,x_10_address0,x_10_ce0,x_10_q0,x_10_address1,x_10_ce1,x_10_q1,x_11_address0,x_11_ce0,x_11_q0,x_11_address1,x_11_ce1,x_11_q1,x_12_address0,x_12_ce0,x_12_q0,x_12_address1,x_12_ce1,x_12_q1,offset);  
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
output  [5:0] x_0_address0;
output   x_0_ce0;
input  [63:0] x_0_q0;
output  [5:0] x_0_address1;
output   x_0_ce1;
input  [63:0] x_0_q1;
output  [5:0] x_1_address0;
output   x_1_ce0;
input  [63:0] x_1_q0;
output  [5:0] x_1_address1;
output   x_1_ce1;
input  [63:0] x_1_q1;
output  [5:0] x_2_address0;
output   x_2_ce0;
input  [63:0] x_2_q0;
output  [5:0] x_2_address1;
output   x_2_ce1;
input  [63:0] x_2_q1;
output  [5:0] x_3_address0;
output   x_3_ce0;
input  [63:0] x_3_q0;
output  [5:0] x_3_address1;
output   x_3_ce1;
input  [63:0] x_3_q1;
output  [5:0] x_4_address0;
output   x_4_ce0;
input  [63:0] x_4_q0;
output  [5:0] x_4_address1;
output   x_4_ce1;
input  [63:0] x_4_q1;
output  [5:0] x_5_address0;
output   x_5_ce0;
input  [63:0] x_5_q0;
output  [5:0] x_5_address1;
output   x_5_ce1;
input  [63:0] x_5_q1;
output  [5:0] x_6_address0;
output   x_6_ce0;
input  [63:0] x_6_q0;
output  [5:0] x_6_address1;
output   x_6_ce1;
input  [63:0] x_6_q1;
output  [5:0] x_7_address0;
output   x_7_ce0;
input  [63:0] x_7_q0;
output  [5:0] x_7_address1;
output   x_7_ce1;
input  [63:0] x_7_q1;
output  [5:0] x_8_address0;
output   x_8_ce0;
input  [63:0] x_8_q0;
output  [5:0] x_8_address1;
output   x_8_ce1;
input  [63:0] x_8_q1;
output  [5:0] x_9_address0;
output   x_9_ce0;
input  [63:0] x_9_q0;
output  [5:0] x_9_address1;
output   x_9_ce1;
input  [63:0] x_9_q1;
output  [5:0] x_10_address0;
output   x_10_ce0;
input  [63:0] x_10_q0;
output  [5:0] x_10_address1;
output   x_10_ce1;
input  [63:0] x_10_q1;
output  [5:0] x_11_address0;
output   x_11_ce0;
input  [63:0] x_11_q0;
output  [5:0] x_11_address1;
output   x_11_ce1;
input  [63:0] x_11_q1;
output  [5:0] x_12_address0;
output   x_12_ce0;
input  [63:0] x_12_q0;
output  [5:0] x_12_address1;
output   x_12_ce1;
input  [63:0] x_12_q1;
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
reg   [8:0] offset_read_reg_1895;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] offset_read_reg_1895_pp0_iter1_reg;
wire   [9:0] zext_ln102_1_fu_1152_p1;
reg   [9:0] zext_ln102_1_reg_1902;
reg   [5:0] tmp_12_reg_1911;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] x_0_load_reg_1981;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] x_1_load_reg_1986;
reg   [63:0] x_2_load_reg_1991;
reg   [63:0] x_3_load_reg_1996;
reg   [63:0] x_4_load_reg_2001;
reg   [63:0] x_5_load_reg_2006;
reg   [63:0] x_6_load_reg_2011;
reg   [63:0] x_7_load_reg_2016;
reg   [63:0] x_8_load_reg_2021;
reg   [63:0] x_9_load_reg_2026;
reg   [63:0] x_10_load_reg_2031;
reg   [63:0] x_11_load_reg_2036;
reg   [63:0] x_12_load_reg_2041;
wire    ap_block_pp0_stage3_11001;
wire   [3:0] trunc_ln102_fu_1242_p1;
reg   [3:0] trunc_ln102_reg_2176;
wire   [63:0] tmp_fu_1246_p29;
reg   [63:0] tmp_reg_2185;
wire   [63:0] tmp_1_fu_1293_p29;
reg   [63:0] tmp_1_reg_2190;
wire   [63:0] tmp_2_fu_1353_p29;
reg   [63:0] tmp_2_reg_2195;
wire   [63:0] tmp_3_fu_1465_p29;
reg   [63:0] tmp_3_reg_2330;
wire   [63:0] tmp_4_fu_1524_p29;
reg   [63:0] tmp_4_reg_2335;
reg   [6:0] tmp_18_reg_2405;
wire   [63:0] tmp_5_fu_1618_p29;
reg   [63:0] tmp_5_reg_2410;
wire   [63:0] tmp_6_fu_1719_p29;
reg   [63:0] tmp_6_reg_2545;
wire   [63:0] tmp_7_fu_1778_p29;
reg   [63:0] tmp_7_reg_2550;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln102_fu_1174_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln104_fu_1199_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln105_fu_1225_p1;
wire   [63:0] zext_ln106_fu_1422_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln107_fu_1448_p1;
wire   [63:0] zext_ln108_fu_1592_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln109_fu_1677_p1;
wire   [63:0] zext_ln110_fu_1702_p1;
reg    x_0_ce1_local;
reg   [5:0] x_0_address1_local;
reg    x_0_ce0_local;
reg   [5:0] x_0_address0_local;
reg    x_1_ce1_local;
reg   [5:0] x_1_address1_local;
reg    x_1_ce0_local;
reg   [5:0] x_1_address0_local;
reg    x_2_ce1_local;
reg   [5:0] x_2_address1_local;
reg    x_2_ce0_local;
reg   [5:0] x_2_address0_local;
reg    x_3_ce1_local;
reg   [5:0] x_3_address1_local;
reg    x_3_ce0_local;
reg   [5:0] x_3_address0_local;
reg    x_4_ce1_local;
reg   [5:0] x_4_address1_local;
reg    x_4_ce0_local;
reg   [5:0] x_4_address0_local;
reg    x_5_ce1_local;
reg   [5:0] x_5_address1_local;
reg    x_5_ce0_local;
reg   [5:0] x_5_address0_local;
reg    x_6_ce1_local;
reg   [5:0] x_6_address1_local;
reg    x_6_ce0_local;
reg   [5:0] x_6_address0_local;
reg    x_7_ce1_local;
reg   [5:0] x_7_address1_local;
reg    x_7_ce0_local;
reg   [5:0] x_7_address0_local;
reg    x_8_ce1_local;
reg   [5:0] x_8_address1_local;
reg    x_8_ce0_local;
reg   [5:0] x_8_address0_local;
reg    x_9_ce1_local;
reg   [5:0] x_9_address1_local;
reg    x_9_ce0_local;
reg   [5:0] x_9_address0_local;
reg    x_10_ce1_local;
reg   [5:0] x_10_address1_local;
reg    x_10_ce0_local;
reg   [5:0] x_10_address0_local;
reg    x_11_ce1_local;
reg   [5:0] x_11_address1_local;
reg    x_11_ce0_local;
reg   [5:0] x_11_address0_local;
reg    x_12_ce1_local;
reg   [5:0] x_12_address1_local;
reg    x_12_ce0_local;
reg   [5:0] x_12_address0_local;
reg    a_y_we1_local;
reg   [63:0] a_y_d1_local;
reg    a_y_ce1_local;
reg   [2:0] a_y_address1_local;
reg    a_y_we0_local;
reg   [63:0] a_y_d0_local;
reg    a_y_ce0_local;
reg   [2:0] a_y_address0_local;
wire   [4:0] grp_fu_1146_p1;
wire   [8:0] mul_ln102_fu_1158_p0;
wire   [10:0] mul_ln102_fu_1158_p1;
wire   [18:0] mul_ln102_fu_1158_p2;
wire   [20:0] tmp_13_fu_1190_p1;
wire  signed [20:0] grp_fu_1837_p3;
wire   [6:0] tmp_13_fu_1190_p4;
wire   [20:0] tmp_14_fu_1216_p1;
wire  signed [20:0] grp_fu_1846_p3;
wire   [6:0] tmp_14_fu_1216_p4;
wire   [3:0] grp_fu_1146_p2;
wire   [63:0] tmp_fu_1246_p27;
wire   [63:0] tmp_1_fu_1293_p27;
wire   [63:0] tmp_2_fu_1353_p27;
wire   [20:0] tmp_15_fu_1413_p1;
wire  signed [20:0] grp_fu_1855_p3;
wire   [6:0] tmp_15_fu_1413_p4;
wire   [20:0] tmp_16_fu_1439_p1;
wire  signed [20:0] grp_fu_1863_p3;
wire   [6:0] tmp_16_fu_1439_p4;
wire   [63:0] tmp_3_fu_1465_p27;
wire   [63:0] tmp_4_fu_1524_p27;
wire   [20:0] tmp_17_fu_1583_p1;
wire  signed [20:0] grp_fu_1871_p3;
wire   [6:0] tmp_17_fu_1583_p4;
wire   [20:0] tmp_18_fu_1609_p1;
wire  signed [20:0] grp_fu_1879_p3;
wire   [63:0] tmp_5_fu_1618_p27;
wire   [20:0] tmp_19_fu_1693_p1;
wire  signed [20:0] grp_fu_1887_p3;
wire   [6:0] tmp_19_fu_1693_p4;
wire   [63:0] tmp_6_fu_1719_p27;
wire   [63:0] tmp_7_fu_1778_p27;
wire   [8:0] grp_fu_1837_p0;
wire   [3:0] grp_fu_1837_p1;
wire   [10:0] grp_fu_1837_p2;
wire   [8:0] grp_fu_1846_p0;
wire   [4:0] grp_fu_1846_p1;
wire   [10:0] grp_fu_1846_p2;
wire   [8:0] grp_fu_1855_p0;
wire   [4:0] grp_fu_1855_p1;
wire   [10:0] grp_fu_1855_p2;
wire   [8:0] grp_fu_1863_p0;
wire   [5:0] grp_fu_1863_p1;
wire   [10:0] grp_fu_1863_p2;
wire   [8:0] grp_fu_1871_p0;
wire   [5:0] grp_fu_1871_p1;
wire   [10:0] grp_fu_1871_p2;
wire   [8:0] grp_fu_1879_p0;
wire   [5:0] grp_fu_1879_p1;
wire   [10:0] grp_fu_1879_p2;
wire   [8:0] grp_fu_1887_p0;
wire   [5:0] grp_fu_1887_p1;
wire   [10:0] grp_fu_1887_p2;
reg    grp_fu_1146_ce;
reg    grp_fu_1837_ce;
reg    grp_fu_1846_ce;
reg    grp_fu_1855_ce;
reg    grp_fu_1863_ce;
reg    grp_fu_1871_ce;
reg    grp_fu_1879_ce;
reg    grp_fu_1887_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_0to3;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0_1to4;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire   [18:0] mul_ln102_fu_1158_p00;
wire   [3:0] tmp_fu_1246_p1;
wire   [3:0] tmp_fu_1246_p3;
wire   [3:0] tmp_fu_1246_p5;
wire   [3:0] tmp_fu_1246_p7;
wire   [3:0] tmp_fu_1246_p9;
wire   [3:0] tmp_fu_1246_p11;
wire   [3:0] tmp_fu_1246_p13;
wire   [3:0] tmp_fu_1246_p15;
wire  signed [3:0] tmp_fu_1246_p17;
wire  signed [3:0] tmp_fu_1246_p19;
wire  signed [3:0] tmp_fu_1246_p21;
wire  signed [3:0] tmp_fu_1246_p23;
wire  signed [3:0] tmp_fu_1246_p25;
wire   [3:0] tmp_1_fu_1293_p1;
wire   [3:0] tmp_1_fu_1293_p3;
wire   [3:0] tmp_1_fu_1293_p5;
wire  signed [3:0] tmp_1_fu_1293_p7;
wire  signed [3:0] tmp_1_fu_1293_p9;
wire  signed [3:0] tmp_1_fu_1293_p11;
wire  signed [3:0] tmp_1_fu_1293_p13;
wire  signed [3:0] tmp_1_fu_1293_p15;
wire   [3:0] tmp_1_fu_1293_p17;
wire   [3:0] tmp_1_fu_1293_p19;
wire   [3:0] tmp_1_fu_1293_p21;
wire   [3:0] tmp_1_fu_1293_p23;
wire   [3:0] tmp_1_fu_1293_p25;
wire  signed [3:0] tmp_2_fu_1353_p1;
wire  signed [3:0] tmp_2_fu_1353_p3;
wire  signed [3:0] tmp_2_fu_1353_p5;
wire   [3:0] tmp_2_fu_1353_p7;
wire   [3:0] tmp_2_fu_1353_p9;
wire   [3:0] tmp_2_fu_1353_p11;
wire   [3:0] tmp_2_fu_1353_p13;
wire   [3:0] tmp_2_fu_1353_p15;
wire   [3:0] tmp_2_fu_1353_p17;
wire   [3:0] tmp_2_fu_1353_p19;
wire   [3:0] tmp_2_fu_1353_p21;
wire  signed [3:0] tmp_2_fu_1353_p23;
wire  signed [3:0] tmp_2_fu_1353_p25;
wire   [3:0] tmp_3_fu_1465_p1;
wire   [3:0] tmp_3_fu_1465_p3;
wire   [3:0] tmp_3_fu_1465_p5;
wire   [3:0] tmp_3_fu_1465_p7;
wire   [3:0] tmp_3_fu_1465_p9;
wire   [3:0] tmp_3_fu_1465_p11;
wire  signed [3:0] tmp_3_fu_1465_p13;
wire  signed [3:0] tmp_3_fu_1465_p15;
wire  signed [3:0] tmp_3_fu_1465_p17;
wire  signed [3:0] tmp_3_fu_1465_p19;
wire  signed [3:0] tmp_3_fu_1465_p21;
wire   [3:0] tmp_3_fu_1465_p23;
wire   [3:0] tmp_3_fu_1465_p25;
wire   [3:0] tmp_4_fu_1524_p1;
wire  signed [3:0] tmp_4_fu_1524_p3;
wire  signed [3:0] tmp_4_fu_1524_p5;
wire  signed [3:0] tmp_4_fu_1524_p7;
wire  signed [3:0] tmp_4_fu_1524_p9;
wire  signed [3:0] tmp_4_fu_1524_p11;
wire   [3:0] tmp_4_fu_1524_p13;
wire   [3:0] tmp_4_fu_1524_p15;
wire   [3:0] tmp_4_fu_1524_p17;
wire   [3:0] tmp_4_fu_1524_p19;
wire   [3:0] tmp_4_fu_1524_p21;
wire   [3:0] tmp_4_fu_1524_p23;
wire   [3:0] tmp_4_fu_1524_p25;
wire  signed [3:0] tmp_5_fu_1618_p1;
wire   [3:0] tmp_5_fu_1618_p3;
wire   [3:0] tmp_5_fu_1618_p5;
wire   [3:0] tmp_5_fu_1618_p7;
wire   [3:0] tmp_5_fu_1618_p9;
wire   [3:0] tmp_5_fu_1618_p11;
wire   [3:0] tmp_5_fu_1618_p13;
wire   [3:0] tmp_5_fu_1618_p15;
wire   [3:0] tmp_5_fu_1618_p17;
wire  signed [3:0] tmp_5_fu_1618_p19;
wire  signed [3:0] tmp_5_fu_1618_p21;
wire  signed [3:0] tmp_5_fu_1618_p23;
wire  signed [3:0] tmp_5_fu_1618_p25;
wire   [3:0] tmp_6_fu_1719_p1;
wire   [3:0] tmp_6_fu_1719_p3;
wire   [3:0] tmp_6_fu_1719_p5;
wire   [3:0] tmp_6_fu_1719_p7;
wire  signed [3:0] tmp_6_fu_1719_p9;
wire  signed [3:0] tmp_6_fu_1719_p11;
wire  signed [3:0] tmp_6_fu_1719_p13;
wire  signed [3:0] tmp_6_fu_1719_p15;
wire  signed [3:0] tmp_6_fu_1719_p17;
wire   [3:0] tmp_6_fu_1719_p19;
wire   [3:0] tmp_6_fu_1719_p21;
wire   [3:0] tmp_6_fu_1719_p23;
wire   [3:0] tmp_6_fu_1719_p25;
wire  signed [3:0] tmp_7_fu_1778_p1;
wire  signed [3:0] tmp_7_fu_1778_p3;
wire  signed [3:0] tmp_7_fu_1778_p5;
wire  signed [3:0] tmp_7_fu_1778_p7;
wire   [3:0] tmp_7_fu_1778_p9;
wire   [3:0] tmp_7_fu_1778_p11;
wire   [3:0] tmp_7_fu_1778_p13;
wire   [3:0] tmp_7_fu_1778_p15;
wire   [3:0] tmp_7_fu_1778_p17;
wire   [3:0] tmp_7_fu_1778_p19;
wire   [3:0] tmp_7_fu_1778_p21;
wire   [3:0] tmp_7_fu_1778_p23;
wire  signed [3:0] tmp_7_fu_1778_p25;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U173(.clk(ap_clk),.reset(ap_rst),.din0(offset),.din1(grp_fu_1146_p1),.ce(grp_fu_1146_ce),.dout(grp_fu_1146_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U174(.din0(mul_ln102_fu_1158_p0),.din1(mul_ln102_fu_1158_p1),.dout(mul_ln102_fu_1158_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U175(.din0(x_0_load_reg_1981),.din1(x_1_load_reg_1986),.din2(x_2_load_reg_1991),.din3(x_3_load_reg_1996),.din4(x_4_load_reg_2001),.din5(x_5_load_reg_2006),.din6(x_6_load_reg_2011),.din7(x_7_load_reg_2016),.din8(x_8_load_reg_2021),.din9(x_9_load_reg_2026),.din10(x_10_load_reg_2031),.din11(x_11_load_reg_2036),.din12(x_12_load_reg_2041),.def(tmp_fu_1246_p27),.sel(trunc_ln102_fu_1242_p1),.dout(tmp_fu_1246_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U176(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(tmp_1_fu_1293_p27),.sel(trunc_ln102_fu_1242_p1),.dout(tmp_1_fu_1293_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U177(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.din3(x_3_q1),.din4(x_4_q1),.din5(x_5_q1),.din6(x_6_q1),.din7(x_7_q1),.din8(x_8_q1),.din9(x_9_q1),.din10(x_10_q1),.din11(x_11_q1),.din12(x_12_q1),.def(tmp_2_fu_1353_p27),.sel(trunc_ln102_fu_1242_p1),.dout(tmp_2_fu_1353_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U178(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.din3(x_3_q1),.din4(x_4_q1),.din5(x_5_q1),.din6(x_6_q1),.din7(x_7_q1),.din8(x_8_q1),.din9(x_9_q1),.din10(x_10_q1),.din11(x_11_q1),.din12(x_12_q1),.def(tmp_3_fu_1465_p27),.sel(trunc_ln102_reg_2176),.dout(tmp_3_fu_1465_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U179(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(tmp_4_fu_1524_p27),.sel(trunc_ln102_reg_2176),.dout(tmp_4_fu_1524_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U180(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(tmp_5_fu_1618_p27),.sel(trunc_ln102_reg_2176),.dout(tmp_5_fu_1618_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U181(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(tmp_6_fu_1719_p27),.sel(trunc_ln102_reg_2176),.dout(tmp_6_fu_1719_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U182(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.din8(x_8_q0),.din9(x_9_q0),.din10(x_10_q0),.din11(x_11_q0),.din12(x_12_q0),.def(tmp_7_fu_1778_p27),.sel(trunc_ln102_reg_2176),.dout(tmp_7_fu_1778_p29));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U183(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1837_p0),.din1(grp_fu_1837_p1),.din2(grp_fu_1837_p2),.ce(grp_fu_1837_ce),.dout(grp_fu_1837_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U184(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1846_p0),.din1(grp_fu_1846_p1),.din2(grp_fu_1846_p2),.ce(grp_fu_1846_ce),.dout(grp_fu_1846_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U185(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1855_p0),.din1(grp_fu_1855_p1),.din2(grp_fu_1855_p2),.ce(grp_fu_1855_ce),.dout(grp_fu_1855_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U186(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1863_p0),.din1(grp_fu_1863_p1),.din2(grp_fu_1863_p2),.ce(grp_fu_1863_ce),.dout(grp_fu_1863_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U187(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1871_p0),.din1(grp_fu_1871_p1),.din2(grp_fu_1871_p2),.ce(grp_fu_1871_ce),.dout(grp_fu_1871_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U188(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1879_p0),.din1(grp_fu_1879_p1),.din2(grp_fu_1879_p2),.ce(grp_fu_1879_ce),.dout(grp_fu_1879_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U189(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1887_p0),.din1(grp_fu_1887_p1),.din2(grp_fu_1887_p2),.ce(grp_fu_1887_ce),.dout(grp_fu_1887_p3));
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
        offset_read_reg_1895 <= offset;
        offset_read_reg_1895_pp0_iter1_reg <= offset_read_reg_1895;
        tmp_12_reg_1911 <= {{mul_ln102_fu_1158_p2[18:13]}};
        tmp_1_reg_2190 <= tmp_1_fu_1293_p29;
        tmp_2_reg_2195 <= tmp_2_fu_1353_p29;
        tmp_reg_2185 <= tmp_fu_1246_p29;
        trunc_ln102_reg_2176 <= trunc_ln102_fu_1242_p1;
        zext_ln102_1_reg_1902[8 : 0] <= zext_ln102_1_fu_1152_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_18_reg_2405 <= {{tmp_18_fu_1609_p1[20:14]}};
        tmp_3_reg_2330 <= tmp_3_fu_1465_p29;
        tmp_4_reg_2335 <= tmp_4_fu_1524_p29;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_5_reg_2410 <= tmp_5_fu_1618_p29;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_6_reg_2545 <= tmp_6_fu_1719_p29;
        tmp_7_reg_2550 <= tmp_7_fu_1778_p29;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_0_load_reg_1981 <= x_0_q1;
        x_10_load_reg_2031 <= x_10_q1;
        x_11_load_reg_2036 <= x_11_q1;
        x_12_load_reg_2041 <= x_12_q1;
        x_1_load_reg_1986 <= x_1_q1;
        x_2_load_reg_1991 <= x_2_q1;
        x_3_load_reg_1996 <= x_3_q1;
        x_4_load_reg_2001 <= x_4_q1;
        x_5_load_reg_2006 <= x_5_q1;
        x_6_load_reg_2011 <= x_6_q1;
        x_7_load_reg_2016 <= x_7_q1;
        x_8_load_reg_2021 <= x_8_q1;
        x_9_load_reg_2026 <= x_9_q1;
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
        a_y_d0_local = tmp_7_reg_2550;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_y_d0_local = tmp_5_reg_2410;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_y_d0_local = tmp_3_reg_2330;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_y_d0_local = tmp_1_reg_2190;
    end else begin
        a_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_y_d1_local = tmp_6_reg_2545;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_y_d1_local = tmp_4_reg_2335;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_y_d1_local = tmp_2_reg_2195;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_y_d1_local = tmp_reg_2185;
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
        grp_fu_1146_ce = 1'b1;
    end else begin
        grp_fu_1146_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1837_ce = 1'b1;
    end else begin
        grp_fu_1837_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1846_ce = 1'b1;
    end else begin
        grp_fu_1846_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1855_ce = 1'b1;
    end else begin
        grp_fu_1855_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1863_ce = 1'b1;
    end else begin
        grp_fu_1863_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1871_ce = 1'b1;
    end else begin
        grp_fu_1871_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1879_ce = 1'b1;
    end else begin
        grp_fu_1879_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_1887_ce = 1'b1;
    end else begin
        grp_fu_1887_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_0_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_0_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_0_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_0_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_0_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_0_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_0_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_0_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_10_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_10_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_10_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_10_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_10_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_10_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_10_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_10_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_10_ce0_local = 1'b1;
    end else begin
        x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_10_ce1_local = 1'b1;
    end else begin
        x_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_11_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_11_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_11_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_11_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_11_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_11_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_11_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_11_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_11_ce0_local = 1'b1;
    end else begin
        x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_11_ce1_local = 1'b1;
    end else begin
        x_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_12_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_12_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_12_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_12_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_12_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_12_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_12_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_12_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_12_ce0_local = 1'b1;
    end else begin
        x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_12_ce1_local = 1'b1;
    end else begin
        x_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_1_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_1_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_1_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_1_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_1_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_1_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_1_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_1_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_2_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_2_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_2_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_2_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_2_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_2_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_2_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_2_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_3_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_3_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_3_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_3_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_3_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_3_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_3_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_3_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_4_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_4_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_4_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_4_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_4_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_4_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_4_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_4_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_5_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_5_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_5_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_5_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_5_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_5_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_5_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_5_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_6_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_6_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_6_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_6_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_6_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_6_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_6_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_6_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_7_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_7_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_7_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_7_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_7_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_7_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_7_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_7_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_7_ce0_local = 1'b1;
    end else begin
        x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_7_ce1_local = 1'b1;
    end else begin
        x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_8_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_8_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_8_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_8_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_8_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_8_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_8_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_8_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_8_ce0_local = 1'b1;
    end else begin
        x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_8_ce1_local = 1'b1;
    end else begin
        x_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_9_address0_local = zext_ln110_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln102_reg_2176 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        x_9_address0_local = zext_ln109_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_9_address0_local = zext_ln108_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_9_address0_local = zext_ln107_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_9_address0_local = zext_ln104_fu_1199_p1;
    end else begin
        x_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_9_address1_local = zext_ln106_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        x_9_address1_local = zext_ln105_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        x_9_address1_local = zext_ln102_fu_1174_p1;
    end else begin
        x_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln102_reg_2176 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_9_ce0_local = 1'b1;
    end else begin
        x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_9_ce1_local = 1'b1;
    end else begin
        x_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
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
assign grp_fu_1146_p1 = 9'd13;
assign grp_fu_1837_p0 = zext_ln102_1_fu_1152_p1;
assign grp_fu_1837_p1 = 10'd8;
assign grp_fu_1837_p2 = 21'd1261;
assign grp_fu_1846_p0 = zext_ln102_1_fu_1152_p1;
assign grp_fu_1846_p1 = 10'd16;
assign grp_fu_1846_p2 = 21'd1261;
assign grp_fu_1855_p0 = zext_ln102_1_reg_1902;
assign grp_fu_1855_p1 = 10'd24;
assign grp_fu_1855_p2 = 21'd1261;
assign grp_fu_1863_p0 = zext_ln102_1_reg_1902;
assign grp_fu_1863_p1 = 10'd32;
assign grp_fu_1863_p2 = 21'd1261;
assign grp_fu_1871_p0 = zext_ln102_1_reg_1902;
assign grp_fu_1871_p1 = 10'd40;
assign grp_fu_1871_p2 = 21'd1261;
assign grp_fu_1879_p0 = zext_ln102_1_reg_1902;
assign grp_fu_1879_p1 = 10'd48;
assign grp_fu_1879_p2 = 21'd1261;
assign grp_fu_1887_p0 = zext_ln102_1_reg_1902;
assign grp_fu_1887_p1 = 10'd56;
assign grp_fu_1887_p2 = 21'd1261;
assign mul_ln102_fu_1158_p0 = mul_ln102_fu_1158_p00;
assign mul_ln102_fu_1158_p00 = offset_read_reg_1895_pp0_iter1_reg;
assign mul_ln102_fu_1158_p1 = 19'd631;
assign tmp_13_fu_1190_p1 = grp_fu_1837_p3;
assign tmp_13_fu_1190_p4 = {{tmp_13_fu_1190_p1[20:14]}};
assign tmp_14_fu_1216_p1 = grp_fu_1846_p3;
assign tmp_14_fu_1216_p4 = {{tmp_14_fu_1216_p1[20:14]}};
assign tmp_15_fu_1413_p1 = grp_fu_1855_p3;
assign tmp_15_fu_1413_p4 = {{tmp_15_fu_1413_p1[20:14]}};
assign tmp_16_fu_1439_p1 = grp_fu_1863_p3;
assign tmp_16_fu_1439_p4 = {{tmp_16_fu_1439_p1[20:14]}};
assign tmp_17_fu_1583_p1 = grp_fu_1871_p3;
assign tmp_17_fu_1583_p4 = {{tmp_17_fu_1583_p1[20:14]}};
assign tmp_18_fu_1609_p1 = grp_fu_1879_p3;
assign tmp_19_fu_1693_p1 = grp_fu_1887_p3;
assign tmp_19_fu_1693_p4 = {{tmp_19_fu_1693_p1[20:14]}};
assign tmp_1_fu_1293_p27 = 'bx;
assign tmp_2_fu_1353_p27 = 'bx;
assign tmp_3_fu_1465_p27 = 'bx;
assign tmp_4_fu_1524_p27 = 'bx;
assign tmp_5_fu_1618_p27 = 'bx;
assign tmp_6_fu_1719_p27 = 'bx;
assign tmp_7_fu_1778_p27 = 'bx;
assign tmp_fu_1246_p27 = 'bx;
assign trunc_ln102_fu_1242_p1 = grp_fu_1146_p2[3:0];
assign x_0_address0 = x_0_address0_local;
assign x_0_address1 = x_0_address1_local;
assign x_0_ce0 = x_0_ce0_local;
assign x_0_ce1 = x_0_ce1_local;
assign x_10_address0 = x_10_address0_local;
assign x_10_address1 = x_10_address1_local;
assign x_10_ce0 = x_10_ce0_local;
assign x_10_ce1 = x_10_ce1_local;
assign x_11_address0 = x_11_address0_local;
assign x_11_address1 = x_11_address1_local;
assign x_11_ce0 = x_11_ce0_local;
assign x_11_ce1 = x_11_ce1_local;
assign x_12_address0 = x_12_address0_local;
assign x_12_address1 = x_12_address1_local;
assign x_12_ce0 = x_12_ce0_local;
assign x_12_ce1 = x_12_ce1_local;
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
assign x_7_address0 = x_7_address0_local;
assign x_7_address1 = x_7_address1_local;
assign x_7_ce0 = x_7_ce0_local;
assign x_7_ce1 = x_7_ce1_local;
assign x_8_address0 = x_8_address0_local;
assign x_8_address1 = x_8_address1_local;
assign x_8_ce0 = x_8_ce0_local;
assign x_8_ce1 = x_8_ce1_local;
assign x_9_address0 = x_9_address0_local;
assign x_9_address1 = x_9_address1_local;
assign x_9_ce0 = x_9_ce0_local;
assign x_9_ce1 = x_9_ce1_local;
assign zext_ln102_1_fu_1152_p1 = offset_read_reg_1895_pp0_iter1_reg;
assign zext_ln102_fu_1174_p1 = tmp_12_reg_1911;
assign zext_ln104_fu_1199_p1 = tmp_13_fu_1190_p4;
assign zext_ln105_fu_1225_p1 = tmp_14_fu_1216_p4;
assign zext_ln106_fu_1422_p1 = tmp_15_fu_1413_p4;
assign zext_ln107_fu_1448_p1 = tmp_16_fu_1439_p4;
assign zext_ln108_fu_1592_p1 = tmp_17_fu_1583_p4;
assign zext_ln109_fu_1677_p1 = tmp_18_reg_2405;
assign zext_ln110_fu_1702_p1 = tmp_19_fu_1693_p4;
always @ (posedge ap_clk) begin
    zext_ln102_1_reg_1902[9] <= 1'b0;
end
endmodule 
