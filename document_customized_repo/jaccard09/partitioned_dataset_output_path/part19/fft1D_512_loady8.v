
module fft1D_512_loady8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_ce,x_0_address0,x_0_ce0,x_0_q0,x_0_address1,x_0_ce1,x_0_q1,x_1_address0,x_1_ce0,x_1_q0,x_1_address1,x_1_ce1,x_1_q1,x_2_address0,x_2_ce0,x_2_q0,x_2_address1,x_2_ce1,x_2_q1,x_3_address0,x_3_ce0,x_3_q0,x_3_address1,x_3_ce1,x_3_q1,x_4_address0,x_4_ce0,x_4_q0,x_4_address1,x_4_ce1,x_4_q1,x_5_address0,x_5_ce0,x_5_q0,x_5_address1,x_5_ce1,x_5_q1,offset,ap_return_0,ap_return_1,ap_return_2,ap_return_3,ap_return_4,ap_return_5,ap_return_6,ap_return_7);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_block_pp0_stage1_subdone;
reg   [8:0] offset_read_reg_970;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] offset_read_reg_970_pp0_iter1_reg;
reg   [8:0] offset_read_reg_970_pp0_iter2_reg;
reg   [8:0] offset_read_reg_970_pp0_iter3_reg;
reg   [8:0] offset_read_reg_970_pp0_iter4_reg;
wire   [9:0] zext_ln102_1_fu_580_p1;
reg   [9:0] zext_ln102_1_reg_977;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] tmp_reg_987;
reg   [6:0] tmp_reg_987_pp0_iter5_reg;
wire   [2:0] trunc_ln103_fu_602_p1;
reg   [2:0] trunc_ln103_reg_992;
reg   [2:0] trunc_ln103_reg_992_pp0_iter7_reg;
reg   [7:0] tmp_25_reg_1002;
wire   [63:0] a_y_fu_709_p15;
reg   [63:0] a_y_reg_1187;
wire   [63:0] a_y_1_fu_740_p15;
reg   [63:0] a_y_1_reg_1192;
wire   [63:0] a_y_2_fu_771_p15;
reg   [63:0] a_y_2_reg_1197;
wire   [63:0] grp_fu_512_p15;
reg   [63:0] a_y_3_reg_1202;
wire   [63:0] grp_fu_543_p15;
reg   [63:0] a_y_4_reg_1207;
wire   [63:0] a_y_5_fu_802_p15;
reg   [63:0] a_y_5_reg_1212;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln102_fu_615_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln104_fu_633_p1;
wire   [63:0] zext_ln105_fu_652_p1;
wire   [63:0] zext_ln106_fu_671_p1;
wire   [63:0] zext_ln107_fu_690_p1;
wire   [63:0] zext_ln108_fu_700_p1;
wire   [63:0] zext_ln109_fu_842_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_861_p1;
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
wire   [63:0] grp_fu_512_p13;
reg   [2:0] grp_fu_512_p14;
wire   [63:0] grp_fu_543_p13;
reg   [2:0] grp_fu_543_p14;
wire   [3:0] grp_fu_574_p1;
wire   [8:0] mul_ln102_fu_586_p0;
wire   [10:0] mul_ln102_fu_586_p1;
wire   [18:0] mul_ln102_fu_586_p2;
wire   [2:0] grp_fu_574_p2;
wire   [20:0] tmp_25_fu_606_p1;
wire  signed [20:0] grp_fu_913_p3;
wire   [20:0] tmp_21_fu_624_p1;
wire  signed [20:0] grp_fu_922_p3;
wire   [7:0] tmp_21_fu_624_p4;
wire   [20:0] tmp_22_fu_643_p1;
wire  signed [20:0] grp_fu_930_p3;
wire   [7:0] tmp_22_fu_643_p4;
wire   [20:0] tmp_23_fu_662_p1;
wire  signed [20:0] grp_fu_938_p3;
wire   [7:0] tmp_23_fu_662_p4;
wire   [20:0] tmp_24_fu_681_p1;
wire  signed [20:0] grp_fu_946_p3;
wire   [7:0] tmp_24_fu_681_p4;
wire   [63:0] a_y_fu_709_p13;
wire   [63:0] a_y_1_fu_740_p13;
wire   [63:0] a_y_2_fu_771_p13;
wire   [63:0] a_y_5_fu_802_p13;
wire   [20:0] tmp_26_fu_833_p1;
wire  signed [20:0] grp_fu_954_p3;
wire   [7:0] tmp_26_fu_833_p4;
wire   [20:0] tmp_27_fu_852_p1;
wire  signed [20:0] grp_fu_962_p3;
wire   [7:0] tmp_27_fu_852_p4;
wire   [8:0] grp_fu_913_p0;
wire   [5:0] grp_fu_913_p1;
wire   [10:0] grp_fu_913_p2;
wire   [8:0] grp_fu_922_p0;
wire   [3:0] grp_fu_922_p1;
wire   [10:0] grp_fu_922_p2;
wire   [8:0] grp_fu_930_p0;
wire   [4:0] grp_fu_930_p1;
wire   [10:0] grp_fu_930_p2;
wire   [8:0] grp_fu_938_p0;
wire   [4:0] grp_fu_938_p1;
wire   [10:0] grp_fu_938_p2;
wire   [8:0] grp_fu_946_p0;
wire   [5:0] grp_fu_946_p1;
wire   [10:0] grp_fu_946_p2;
wire   [8:0] grp_fu_954_p0;
wire   [5:0] grp_fu_954_p1;
wire   [10:0] grp_fu_954_p2;
wire   [8:0] grp_fu_962_p0;
wire   [5:0] grp_fu_962_p1;
wire   [10:0] grp_fu_962_p2;
reg    grp_fu_574_ce;
reg    grp_fu_913_ce;
reg    grp_fu_922_ce;
reg    grp_fu_930_ce;
reg    grp_fu_938_ce;
reg    grp_fu_946_ce;
reg    grp_fu_954_ce;
reg    grp_fu_962_ce;
reg   [1:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
reg    ap_idle_pp0_0to6;
reg    ap_reset_idle_pp0;
reg    ap_reset_start_pp0;
wire    ap_enable_pp0;
wire   [9:0] grp_fu_913_p00;
wire   [18:0] mul_ln102_fu_586_p00;
reg    ap_condition_276;
wire   [2:0] grp_fu_512_p1;
wire   [2:0] grp_fu_512_p3;
wire   [2:0] grp_fu_512_p5;
wire   [2:0] grp_fu_512_p7;
wire  signed [2:0] grp_fu_512_p9;
wire  signed [2:0] grp_fu_512_p11;
wire  signed [2:0] grp_fu_543_p1;
wire  signed [2:0] grp_fu_543_p3;
wire   [2:0] grp_fu_543_p5;
wire   [2:0] grp_fu_543_p7;
wire   [2:0] grp_fu_543_p9;
wire   [2:0] grp_fu_543_p11;
wire   [2:0] a_y_fu_709_p1;
wire   [2:0] a_y_fu_709_p3;
wire   [2:0] a_y_fu_709_p5;
wire   [2:0] a_y_fu_709_p7;
wire  signed [2:0] a_y_fu_709_p9;
wire  signed [2:0] a_y_fu_709_p11;
wire  signed [2:0] a_y_1_fu_740_p1;
wire  signed [2:0] a_y_1_fu_740_p3;
wire   [2:0] a_y_1_fu_740_p5;
wire   [2:0] a_y_1_fu_740_p7;
wire   [2:0] a_y_1_fu_740_p9;
wire   [2:0] a_y_1_fu_740_p11;
wire   [2:0] a_y_2_fu_771_p1;
wire   [2:0] a_y_2_fu_771_p3;
wire  signed [2:0] a_y_2_fu_771_p5;
wire  signed [2:0] a_y_2_fu_771_p7;
wire   [2:0] a_y_2_fu_771_p9;
wire   [2:0] a_y_2_fu_771_p11;
wire   [2:0] a_y_5_fu_802_p1;
wire   [2:0] a_y_5_fu_802_p3;
wire  signed [2:0] a_y_5_fu_802_p5;
wire  signed [2:0] a_y_5_fu_802_p7;
wire   [2:0] a_y_5_fu_802_p9;
wire   [2:0] a_y_5_fu_802_p11;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U358(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.def(grp_fu_512_p13),.sel(grp_fu_512_p14),.dout(grp_fu_512_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U359(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.def(grp_fu_543_p13),.sel(grp_fu_543_p14),.dout(grp_fu_543_p15));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U360(.clk(ap_clk),.reset(ap_rst),.din0(offset),.din1(grp_fu_574_p1),.ce(grp_fu_574_ce),.dout(grp_fu_574_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U361(.din0(mul_ln102_fu_586_p0),.din1(mul_ln102_fu_586_p1),.dout(mul_ln102_fu_586_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U362(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.din3(x_3_q1),.din4(x_4_q1),.din5(x_5_q1),.def(a_y_fu_709_p13),.sel(trunc_ln103_reg_992),.dout(a_y_fu_709_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U363(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.din3(x_3_q1),.din4(x_4_q1),.din5(x_5_q1),.def(a_y_1_fu_740_p13),.sel(trunc_ln103_reg_992),.dout(a_y_1_fu_740_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U364(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.din3(x_3_q1),.din4(x_4_q1),.din5(x_5_q1),.def(a_y_2_fu_771_p13),.sel(trunc_ln103_reg_992),.dout(a_y_2_fu_771_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U365(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.def(a_y_5_fu_802_p13),.sel(trunc_ln103_reg_992),.dout(a_y_5_fu_802_p15));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U366(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_913_p0),.din1(grp_fu_913_p1),.din2(grp_fu_913_p2),.ce(grp_fu_913_ce),.dout(grp_fu_913_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U367(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_922_p0),.din1(grp_fu_922_p1),.din2(grp_fu_922_p2),.ce(grp_fu_922_ce),.dout(grp_fu_922_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U368(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_930_p0),.din1(grp_fu_930_p1),.din2(grp_fu_930_p2),.ce(grp_fu_930_ce),.dout(grp_fu_930_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U369(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_938_p0),.din1(grp_fu_938_p1),.din2(grp_fu_938_p2),.ce(grp_fu_938_ce),.dout(grp_fu_938_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U370(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_946_p0),.din1(grp_fu_946_p1),.din2(grp_fu_946_p2),.ce(grp_fu_946_ce),.dout(grp_fu_946_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U371(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_954_p0),.din1(grp_fu_954_p1),.din2(grp_fu_954_p2),.ce(grp_fu_954_ce),.dout(grp_fu_954_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U372(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_962_p0),.din1(grp_fu_962_p1),.din2(grp_fu_962_p2),.ce(grp_fu_962_ce),.dout(grp_fu_962_p3));
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_y_1_reg_1192 <= a_y_1_fu_740_p15;
        a_y_2_reg_1197 <= a_y_2_fu_771_p15;
        a_y_5_reg_1212 <= a_y_5_fu_802_p15;
        a_y_reg_1187 <= a_y_fu_709_p15;
        offset_read_reg_970 <= offset;
        offset_read_reg_970_pp0_iter1_reg <= offset_read_reg_970;
        offset_read_reg_970_pp0_iter2_reg <= offset_read_reg_970_pp0_iter1_reg;
        offset_read_reg_970_pp0_iter3_reg <= offset_read_reg_970_pp0_iter2_reg;
        offset_read_reg_970_pp0_iter4_reg <= offset_read_reg_970_pp0_iter3_reg;
        tmp_25_reg_1002 <= {{tmp_25_fu_606_p1[20:13]}};
        trunc_ln103_reg_992 <= trunc_ln103_fu_602_p1;
        trunc_ln103_reg_992_pp0_iter7_reg <= trunc_ln103_reg_992;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_y_3_reg_1202 <= grp_fu_512_p15;
        a_y_4_reg_1207 <= grp_fu_543_p15;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_reg_987 <= {{mul_ln102_fu_586_p2[18:12]}};
        tmp_reg_987_pp0_iter5_reg <= tmp_reg_987;
        zext_ln102_1_reg_977[8 : 0] <= zext_ln102_1_fu_580_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_reset_start_pp0 = 1'b1;
    end else begin
        ap_reset_start_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_512_p14 = trunc_ln103_reg_992_pp0_iter7_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_512_p14 = trunc_ln103_reg_992;
        end else begin
            grp_fu_512_p14 = 'bx;
        end
    end else begin
        grp_fu_512_p14 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_543_p14 = trunc_ln103_reg_992_pp0_iter7_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_543_p14 = trunc_ln103_reg_992;
        end else begin
            grp_fu_543_p14 = 'bx;
        end
    end else begin
        grp_fu_543_p14 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_574_ce = 1'b1;
    end else begin
        grp_fu_574_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_913_ce = 1'b1;
    end else begin
        grp_fu_913_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_922_ce = 1'b1;
    end else begin
        grp_fu_922_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_930_ce = 1'b1;
    end else begin
        grp_fu_930_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_938_ce = 1'b1;
    end else begin
        grp_fu_938_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_946_ce = 1'b1;
    end else begin
        grp_fu_946_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_954_ce = 1'b1;
    end else begin
        grp_fu_954_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_962_ce = 1'b1;
    end else begin
        grp_fu_962_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd4))) begin
        x_0_address0_local = zext_ln110_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd0))) begin
        x_0_address0_local = zext_ln109_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd2))) begin
        x_0_address0_local = zext_ln108_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd4))) begin
        x_0_address0_local = zext_ln107_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd0))) begin
        x_0_address0_local = zext_ln106_fu_671_p1;
    end else begin
        x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_276)) begin
        if ((trunc_ln103_reg_992 == 3'd2)) begin
            x_0_address1_local = zext_ln105_fu_652_p1;
        end else if ((trunc_ln103_reg_992 == 3'd4)) begin
            x_0_address1_local = zext_ln104_fu_633_p1;
        end else if ((trunc_ln103_reg_992 == 3'd0)) begin
            x_0_address1_local = zext_ln102_fu_615_p1;
        end else begin
            x_0_address1_local = 'bx;
        end
    end else begin
        x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd0)))) begin
        x_0_ce0_local = 1'b1;
    end else begin
        x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd0)))) begin
        x_0_ce1_local = 1'b1;
    end else begin
        x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd5))) begin
        x_1_address0_local = zext_ln110_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd1))) begin
        x_1_address0_local = zext_ln109_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd3))) begin
        x_1_address0_local = zext_ln108_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd5))) begin
        x_1_address0_local = zext_ln107_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd1))) begin
        x_1_address0_local = zext_ln106_fu_671_p1;
    end else begin
        x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_276)) begin
        if ((trunc_ln103_reg_992 == 3'd3)) begin
            x_1_address1_local = zext_ln105_fu_652_p1;
        end else if ((trunc_ln103_reg_992 == 3'd5)) begin
            x_1_address1_local = zext_ln104_fu_633_p1;
        end else if ((trunc_ln103_reg_992 == 3'd1)) begin
            x_1_address1_local = zext_ln102_fu_615_p1;
        end else begin
            x_1_address1_local = 'bx;
        end
    end else begin
        x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd1)))) begin
        x_1_ce0_local = 1'b1;
    end else begin
        x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd1)))) begin
        x_1_ce1_local = 1'b1;
    end else begin
        x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd0))) begin
        x_2_address0_local = zext_ln110_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd2))) begin
        x_2_address0_local = zext_ln109_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd4))) begin
        x_2_address0_local = zext_ln108_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd0))) begin
        x_2_address0_local = zext_ln107_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd2))) begin
        x_2_address0_local = zext_ln106_fu_671_p1;
    end else begin
        x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_276)) begin
        if ((trunc_ln103_reg_992 == 3'd4)) begin
            x_2_address1_local = zext_ln105_fu_652_p1;
        end else if ((trunc_ln103_reg_992 == 3'd0)) begin
            x_2_address1_local = zext_ln104_fu_633_p1;
        end else if ((trunc_ln103_reg_992 == 3'd2)) begin
            x_2_address1_local = zext_ln102_fu_615_p1;
        end else begin
            x_2_address1_local = 'bx;
        end
    end else begin
        x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd0)))) begin
        x_2_ce0_local = 1'b1;
    end else begin
        x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd0)))) begin
        x_2_ce1_local = 1'b1;
    end else begin
        x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd1))) begin
        x_3_address0_local = zext_ln110_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd3))) begin
        x_3_address0_local = zext_ln109_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd5))) begin
        x_3_address0_local = zext_ln108_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd1))) begin
        x_3_address0_local = zext_ln107_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd3))) begin
        x_3_address0_local = zext_ln106_fu_671_p1;
    end else begin
        x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_276)) begin
        if ((trunc_ln103_reg_992 == 3'd5)) begin
            x_3_address1_local = zext_ln105_fu_652_p1;
        end else if ((trunc_ln103_reg_992 == 3'd1)) begin
            x_3_address1_local = zext_ln104_fu_633_p1;
        end else if ((trunc_ln103_reg_992 == 3'd3)) begin
            x_3_address1_local = zext_ln102_fu_615_p1;
        end else begin
            x_3_address1_local = 'bx;
        end
    end else begin
        x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd1)))) begin
        x_3_ce0_local = 1'b1;
    end else begin
        x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd1)))) begin
        x_3_ce1_local = 1'b1;
    end else begin
        x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd2))) begin
        x_4_address0_local = zext_ln110_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd4))) begin
        x_4_address0_local = zext_ln109_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd0))) begin
        x_4_address0_local = zext_ln108_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd2))) begin
        x_4_address0_local = zext_ln107_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd4))) begin
        x_4_address0_local = zext_ln106_fu_671_p1;
    end else begin
        x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_276)) begin
        if ((trunc_ln103_reg_992 == 3'd0)) begin
            x_4_address1_local = zext_ln105_fu_652_p1;
        end else if ((trunc_ln103_reg_992 == 3'd2)) begin
            x_4_address1_local = zext_ln104_fu_633_p1;
        end else if ((trunc_ln103_reg_992 == 3'd4)) begin
            x_4_address1_local = zext_ln102_fu_615_p1;
        end else begin
            x_4_address1_local = 'bx;
        end
    end else begin
        x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd2)))) begin
        x_4_ce0_local = 1'b1;
    end else begin
        x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd0)))) begin
        x_4_ce1_local = 1'b1;
    end else begin
        x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd3))) begin
        x_5_address0_local = zext_ln110_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd5))) begin
        x_5_address0_local = zext_ln109_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd1))) begin
        x_5_address0_local = zext_ln108_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd3))) begin
        x_5_address0_local = zext_ln107_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd5))) begin
        x_5_address0_local = zext_ln106_fu_671_p1;
    end else begin
        x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_276)) begin
        if ((trunc_ln103_reg_992 == 3'd1)) begin
            x_5_address1_local = zext_ln105_fu_652_p1;
        end else if ((trunc_ln103_reg_992 == 3'd3)) begin
            x_5_address1_local = zext_ln104_fu_633_p1;
        end else if ((trunc_ln103_reg_992 == 3'd5)) begin
            x_5_address1_local = zext_ln102_fu_615_p1;
        end else begin
            x_5_address1_local = 'bx;
        end
    end else begin
        x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_992 == 3'd3)))) begin
        x_5_ce0_local = 1'b1;
    end else begin
        x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_992 == 3'd1)))) begin
        x_5_ce1_local = 1'b1;
    end else begin
        x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((~((ap_reset_start_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone)) & (ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone)) | ((ap_reset_start_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone)) | ((ap_reset_idle_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_y_1_fu_740_p13 = 'bx;
assign a_y_2_fu_771_p13 = 'bx;
assign a_y_5_fu_802_p13 = 'bx;
assign a_y_fu_709_p13 = 'bx;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
always @ (*) begin
    ap_condition_276 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_return_0 = a_y_reg_1187;
assign ap_return_1 = a_y_1_reg_1192;
assign ap_return_2 = a_y_2_reg_1197;
assign ap_return_3 = a_y_3_reg_1202;
assign ap_return_4 = a_y_4_reg_1207;
assign ap_return_5 = a_y_5_reg_1212;
assign ap_return_6 = grp_fu_512_p15;
assign ap_return_7 = grp_fu_543_p15;
assign grp_fu_512_p13 = 'bx;
assign grp_fu_543_p13 = 'bx;
assign grp_fu_574_p1 = 9'd6;
assign grp_fu_913_p0 = grp_fu_913_p00;
assign grp_fu_913_p00 = offset_read_reg_970_pp0_iter4_reg;
assign grp_fu_913_p1 = 10'd40;
assign grp_fu_913_p2 = 21'd1366;
assign grp_fu_922_p0 = zext_ln102_1_reg_977;
assign grp_fu_922_p1 = 10'd8;
assign grp_fu_922_p2 = 21'd1366;
assign grp_fu_930_p0 = zext_ln102_1_reg_977;
assign grp_fu_930_p1 = 10'd16;
assign grp_fu_930_p2 = 21'd1366;
assign grp_fu_938_p0 = zext_ln102_1_reg_977;
assign grp_fu_938_p1 = 10'd24;
assign grp_fu_938_p2 = 21'd1366;
assign grp_fu_946_p0 = zext_ln102_1_reg_977;
assign grp_fu_946_p1 = 10'd32;
assign grp_fu_946_p2 = 21'd1366;
assign grp_fu_954_p0 = zext_ln102_1_reg_977;
assign grp_fu_954_p1 = 10'd48;
assign grp_fu_954_p2 = 21'd1366;
assign grp_fu_962_p0 = zext_ln102_1_reg_977;
assign grp_fu_962_p1 = 10'd56;
assign grp_fu_962_p2 = 21'd1366;
assign mul_ln102_fu_586_p0 = mul_ln102_fu_586_p00;
assign mul_ln102_fu_586_p00 = offset_read_reg_970_pp0_iter4_reg;
assign mul_ln102_fu_586_p1 = 19'd683;
assign tmp_21_fu_624_p1 = grp_fu_922_p3;
assign tmp_21_fu_624_p4 = {{tmp_21_fu_624_p1[20:13]}};
assign tmp_22_fu_643_p1 = grp_fu_930_p3;
assign tmp_22_fu_643_p4 = {{tmp_22_fu_643_p1[20:13]}};
assign tmp_23_fu_662_p1 = grp_fu_938_p3;
assign tmp_23_fu_662_p4 = {{tmp_23_fu_662_p1[20:13]}};
assign tmp_24_fu_681_p1 = grp_fu_946_p3;
assign tmp_24_fu_681_p4 = {{tmp_24_fu_681_p1[20:13]}};
assign tmp_25_fu_606_p1 = grp_fu_913_p3;
assign tmp_26_fu_833_p1 = grp_fu_954_p3;
assign tmp_26_fu_833_p4 = {{tmp_26_fu_833_p1[20:13]}};
assign tmp_27_fu_852_p1 = grp_fu_962_p3;
assign tmp_27_fu_852_p4 = {{tmp_27_fu_852_p1[20:13]}};
assign trunc_ln103_fu_602_p1 = grp_fu_574_p2[2:0];
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
assign zext_ln102_1_fu_580_p1 = offset_read_reg_970_pp0_iter4_reg;
assign zext_ln102_fu_615_p1 = tmp_reg_987_pp0_iter5_reg;
assign zext_ln104_fu_633_p1 = tmp_21_fu_624_p4;
assign zext_ln105_fu_652_p1 = tmp_22_fu_643_p4;
assign zext_ln106_fu_671_p1 = tmp_23_fu_662_p4;
assign zext_ln107_fu_690_p1 = tmp_24_fu_681_p4;
assign zext_ln108_fu_700_p1 = tmp_25_reg_1002;
assign zext_ln109_fu_842_p1 = tmp_26_fu_833_p4;
assign zext_ln110_fu_861_p1 = tmp_27_fu_852_p4;
always @ (posedge ap_clk) begin
    zext_ln102_1_reg_977[9] <= 1'b0;
end
endmodule 
