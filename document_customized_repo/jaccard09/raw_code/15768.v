module stencil_stencil_Pipeline_stencil_label1_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln7_fu_1433_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_970_p2;
reg   [31:0] reg_1107;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_978_p2;
reg   [31:0] reg_1111;
wire   [5:0] select_ln4_fu_1144_p3;
reg   [5:0] select_ln4_reg_1749;
wire   [6:0] select_ln4_1_fu_1158_p3;
reg   [6:0] select_ln4_1_reg_1756;
wire   [6:0] r_fu_1166_p3;
reg   [6:0] r_reg_1762;
wire   [2:0] trunc_ln8_fu_1182_p1;
reg   [2:0] trunc_ln8_reg_1771;
reg   [2:0] trunc_ln8_reg_1771_pp0_iter1_reg;
reg   [2:0] trunc_ln8_reg_1771_pp0_iter2_reg;
reg   [2:0] trunc_ln8_reg_1771_pp0_iter3_reg;
reg   [2:0] lshr_ln_reg_1781;
wire   [12:0] empty_fu_1212_p2;
reg   [12:0] empty_reg_1788;
wire   [63:0] zext_ln12_fu_1233_p1;
reg   [63:0] zext_ln12_reg_1794;
reg   [63:0] zext_ln12_reg_1794_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_1794_pp0_iter2_reg;
reg   [63:0] zext_ln12_reg_1794_pp0_iter3_reg;
reg   [9:0] lshr_ln12_4_reg_2006;
reg   [9:0] lshr_ln12_5_reg_2011;
wire   [0:0] icmp_ln8_fu_1427_p2;
reg   [0:0] icmp_ln8_reg_2056;
reg   [0:0] icmp_ln7_reg_2061;
reg   [0:0] icmp_ln7_reg_2061_pp0_iter1_reg;
reg   [0:0] icmp_ln7_reg_2061_pp0_iter2_reg;
reg   [0:0] icmp_ln7_reg_2061_pp0_iter3_reg;
wire  signed [31:0] tmp_fu_1465_p19;
reg  signed [31:0] tmp_reg_2065;
wire  signed [31:0] tmp_1_fu_1504_p19;
reg  signed [31:0] tmp_1_reg_2070;
wire  signed [31:0] tmp_2_fu_1543_p19;
reg  signed [31:0] tmp_2_reg_2075;
wire  signed [31:0] grp_fu_990_p19;
reg  signed [31:0] tmp_3_reg_2080;
wire  signed [31:0] grp_fu_1029_p19;
reg  signed [31:0] tmp_4_reg_2085;
wire  signed [31:0] grp_fu_1068_p19;
reg  signed [31:0] tmp_8_reg_2210;
reg  signed [31:0] tmp_5_reg_2215;
reg  signed [31:0] tmp_6_reg_2220;
reg  signed [31:0] tmp_7_reg_2225;
wire   [31:0] grp_fu_974_p2;
reg   [31:0] mul_ln13_2_reg_2230;
wire   [31:0] grp_fu_982_p2;
reg   [31:0] mul_ln13_4_reg_2235;
wire   [31:0] grp_fu_986_p2;
reg   [31:0] mul_ln13_7_reg_2240;
reg   [31:0] mul_ln13_5_reg_2245;
reg   [31:0] mul_ln13_8_reg_2250;
wire   [31:0] add_ln13_5_fu_1643_p2;
reg   [31:0] add_ln13_5_reg_2255;
wire   [31:0] add_ln13_fu_1648_p2;
reg   [31:0] add_ln13_reg_2260;
wire   [31:0] add_ln13_1_fu_1652_p2;
reg   [31:0] add_ln13_1_reg_2265;
wire   [31:0] add_ln13_6_fu_1662_p2;
reg   [31:0] add_ln13_6_reg_2270;
wire   [31:0] temp_fu_1671_p2;
reg   [31:0] temp_reg_2275;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln86_phi_fu_963_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_1261_p1;
wire   [63:0] zext_ln12_2_fu_1289_p1;
wire   [63:0] zext_ln12_3_fu_1313_p1;
wire   [63:0] zext_ln12_4_fu_1341_p1;
wire   [63:0] zext_ln12_8_fu_1399_p1;
wire   [63:0] zext_ln12_5_fu_1582_p1;
wire   [63:0] zext_ln12_6_fu_1614_p1;
wire   [63:0] zext_ln12_7_fu_1626_p1;
reg   [12:0] indvar_flatten2_fu_138;
wire   [12:0] add_ln7_fu_1411_p2;
reg   [6:0] r3_fu_142;
reg   [6:0] ap_sig_allocacmp_r3_load;
reg   [5:0] c4_fu_146;
wire   [5:0] c_fu_1417_p2;
reg   [5:0] ap_sig_allocacmp_c4_load;
reg   [6:0] indvars_iv_next305_fu_150;
wire   [6:0] indvars_iv_next30_fu_1422_p2;
reg   [6:0] ap_sig_allocacmp_indvars_iv_next305_load;
reg    orig_0_ce1_local;
reg   [9:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [9:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [9:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [9:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [9:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [9:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg   [9:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [9:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg   [9:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [9:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg   [9:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [9:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg   [9:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [9:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg   [9:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [9:0] orig_7_address0_local;
reg    sol_6_we0_local;
reg    sol_6_ce0_local;
reg    sol_5_we0_local;
reg    sol_5_ce0_local;
reg    sol_4_we0_local;
reg    sol_4_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_7_we0_local;
reg    sol_7_ce0_local;
reg  signed [31:0] grp_fu_970_p0;
reg  signed [31:0] grp_fu_970_p1;
reg  signed [31:0] grp_fu_974_p0;
reg  signed [31:0] grp_fu_974_p1;
reg  signed [31:0] grp_fu_978_p0;
reg  signed [31:0] grp_fu_978_p1;
reg  signed [31:0] grp_fu_982_p0;
reg  signed [31:0] grp_fu_982_p1;
wire   [31:0] grp_fu_990_p17;
reg   [2:0] grp_fu_990_p18;
wire   [31:0] grp_fu_1029_p17;
reg   [2:0] grp_fu_1029_p18;
wire   [31:0] grp_fu_1068_p17;
reg   [2:0] grp_fu_1068_p18;
wire   [6:0] indvars_iv_next30_mid1_fu_1152_p2;
wire   [6:0] select_ln4_cast1_fu_1196_p1;
wire   [7:0] tmp1_cast_cast_fu_1200_p3;
wire   [12:0] tmp1_cast_cast_cast_fu_1208_p1;
wire   [12:0] tmp_10_fu_1174_p3;
wire   [9:0] add_ln_fu_1227_p3;
wire   [12:0] tmp_9_fu_1221_p3;
wire   [12:0] add_ln12_fu_1245_p2;
wire   [9:0] lshr_ln12_1_fu_1251_p4;
wire   [12:0] add_ln12_1_fu_1273_p2;
wire   [9:0] lshr_ln12_2_fu_1279_p4;
wire   [9:0] add_ln5_fu_1307_p3;
wire   [12:0] tmp_s_fu_1301_p3;
wire   [12:0] add_ln12_2_fu_1325_p2;
wire   [9:0] lshr_ln12_3_fu_1331_p4;
wire   [12:0] add_ln12_3_fu_1353_p2;
wire   [12:0] add_ln12_4_fu_1369_p2;
wire   [12:0] add_ln12_5_fu_1384_p2;
wire   [9:0] lshr_ln12_6_fu_1389_p4;
wire   [31:0] tmp_fu_1465_p17;
wire   [31:0] tmp_1_fu_1504_p17;
wire   [31:0] tmp_2_fu_1543_p17;
wire   [3:0] zext_ln5_fu_1593_p1;
wire   [4:0] zext_ln5_cast_fu_1596_p3;
wire   [9:0] zext_ln5_1_fu_1604_p1;
wire   [9:0] tmp_11_fu_1458_p3;
wire   [9:0] add_ln5_1_fu_1608_p2;
wire   [31:0] add_ln13_4_fu_1637_p2;
wire   [31:0] add_ln13_3_fu_1658_p2;
wire   [31:0] add_ln13_2_fu_1667_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1131;
reg    ap_condition_497;
wire   [2:0] grp_fu_990_p1;
wire   [2:0] grp_fu_990_p3;
wire   [2:0] grp_fu_990_p5;
wire   [2:0] grp_fu_990_p7;
wire  signed [2:0] grp_fu_990_p9;
wire  signed [2:0] grp_fu_990_p11;
wire  signed [2:0] grp_fu_990_p13;
wire  signed [2:0] grp_fu_990_p15;
wire  signed [2:0] grp_fu_1029_p1;
wire   [2:0] grp_fu_1029_p3;
wire   [2:0] grp_fu_1029_p5;
wire   [2:0] grp_fu_1029_p7;
wire   [2:0] grp_fu_1029_p9;
wire  signed [2:0] grp_fu_1029_p11;
wire  signed [2:0] grp_fu_1029_p13;
wire  signed [2:0] grp_fu_1029_p15;
wire  signed [2:0] grp_fu_1068_p1;
wire  signed [2:0] grp_fu_1068_p3;
wire   [2:0] grp_fu_1068_p5;
wire   [2:0] grp_fu_1068_p7;
wire   [2:0] grp_fu_1068_p9;
wire   [2:0] grp_fu_1068_p11;
wire  signed [2:0] grp_fu_1068_p13;
wire  signed [2:0] grp_fu_1068_p15;
wire   [2:0] tmp_fu_1465_p1;
wire   [2:0] tmp_fu_1465_p3;
wire   [2:0] tmp_fu_1465_p5;
wire   [2:0] tmp_fu_1465_p7;
wire  signed [2:0] tmp_fu_1465_p9;
wire  signed [2:0] tmp_fu_1465_p11;
wire  signed [2:0] tmp_fu_1465_p13;
wire  signed [2:0] tmp_fu_1465_p15;
wire  signed [2:0] tmp_1_fu_1504_p1;
wire   [2:0] tmp_1_fu_1504_p3;
wire   [2:0] tmp_1_fu_1504_p5;
wire   [2:0] tmp_1_fu_1504_p7;
wire   [2:0] tmp_1_fu_1504_p9;
wire  signed [2:0] tmp_1_fu_1504_p11;
wire  signed [2:0] tmp_1_fu_1504_p13;
wire  signed [2:0] tmp_1_fu_1504_p15;
wire  signed [2:0] tmp_2_fu_1543_p1;
wire  signed [2:0] tmp_2_fu_1543_p3;
wire   [2:0] tmp_2_fu_1543_p5;
wire   [2:0] tmp_2_fu_1543_p7;
wire   [2:0] tmp_2_fu_1543_p9;
wire   [2:0] tmp_2_fu_1543_p11;
wire  signed [2:0] tmp_2_fu_1543_p13;
wire  signed [2:0] tmp_2_fu_1543_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_138 = 13'd0;
#0 r3_fu_142 = 7'd0;
#0 c4_fu_146 = 6'd0;
#0 indvars_iv_next305_fu_150 = 7'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_970_p0),.din1(grp_fu_970_p1),.ce(1'b1),.dout(grp_fu_970_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_974_p0),.din1(grp_fu_974_p1),.ce(1'b1),.dout(grp_fu_974_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_978_p0),.din1(grp_fu_978_p1),.ce(1'b1),.dout(grp_fu_978_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_982_p0),.din1(grp_fu_982_p1),.ce(1'b1),.dout(grp_fu_982_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(filter_load_3),.din1(tmp_3_reg_2080),.ce(1'b1),.dout(grp_fu_986_p2));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U6(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_990_p17),.sel(grp_fu_990_p18),.dout(grp_fu_990_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U7(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_1029_p17),.sel(grp_fu_1029_p18),.dout(grp_fu_1029_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h7 ),.din1_WIDTH( 32 ),.CASE2( 3'h0 ),.din2_WIDTH( 32 ),.CASE3( 3'h1 ),.din3_WIDTH( 32 ),.CASE4( 3'h2 ),.din4_WIDTH( 32 ),.CASE5( 3'h3 ),.din5_WIDTH( 32 ),.CASE6( 3'h4 ),.din6_WIDTH( 32 ),.CASE7( 3'h5 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U8(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_1068_p17),.sel(grp_fu_1068_p18),.dout(grp_fu_1068_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U9(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_fu_1465_p17),.sel(trunc_ln8_reg_1771),.dout(tmp_fu_1465_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U10(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_1_fu_1504_p17),.sel(trunc_ln8_reg_1771),.dout(tmp_1_fu_1504_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h7 ),.din1_WIDTH( 32 ),.CASE2( 3'h0 ),.din2_WIDTH( 32 ),.CASE3( 3'h1 ),.din3_WIDTH( 32 ),.CASE4( 3'h2 ),.din4_WIDTH( 32 ),.CASE5( 3'h3 ),.din5_WIDTH( 32 ),.CASE6( 3'h4 ),.din6_WIDTH( 32 ),.CASE7( 3'h5 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U11(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_2_fu_1543_p17),.sel(trunc_ln8_reg_1771),.dout(tmp_2_fu_1543_p19));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c4_fu_146 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c4_fu_146 <= c_fu_1417_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_138 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten2_fu_138 <= add_ln7_fu_1411_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next305_fu_150 <= 7'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvars_iv_next305_fu_150 <= indvars_iv_next30_fu_1422_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r3_fu_142 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r3_fu_142 <= r_reg_1762;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_1_reg_2265 <= add_ln13_1_fu_1652_p2;
        add_ln13_6_reg_2270 <= add_ln13_6_fu_1662_p2;
        add_ln13_reg_2260 <= add_ln13_fu_1648_p2;
        empty_reg_1788 <= empty_fu_1212_p2;
        lshr_ln_reg_1781 <= {{select_ln4_fu_1144_p3[5:3]}};
        mul_ln13_7_reg_2240 <= grp_fu_986_p2;
        r_reg_1762 <= r_fu_1166_p3;
        select_ln4_1_reg_1756 <= select_ln4_1_fu_1158_p3;
        select_ln4_reg_1749 <= select_ln4_fu_1144_p3;
        tmp_1_reg_2070 <= tmp_1_fu_1504_p19;
        tmp_2_reg_2075 <= tmp_2_fu_1543_p19;
        tmp_reg_2065 <= tmp_fu_1465_p19;
        trunc_ln8_reg_1771 <= trunc_ln8_fu_1182_p1;
        trunc_ln8_reg_1771_pp0_iter1_reg <= trunc_ln8_reg_1771;
        trunc_ln8_reg_1771_pp0_iter2_reg <= trunc_ln8_reg_1771_pp0_iter1_reg;
        trunc_ln8_reg_1771_pp0_iter3_reg <= trunc_ln8_reg_1771_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_5_reg_2255 <= add_ln13_5_fu_1643_p2;
        icmp_ln7_reg_2061 <= icmp_ln7_fu_1433_p2;
        icmp_ln7_reg_2061_pp0_iter1_reg <= icmp_ln7_reg_2061;
        icmp_ln7_reg_2061_pp0_iter2_reg <= icmp_ln7_reg_2061_pp0_iter1_reg;
        icmp_ln7_reg_2061_pp0_iter3_reg <= icmp_ln7_reg_2061_pp0_iter2_reg;
        lshr_ln12_4_reg_2006 <= {{add_ln12_3_fu_1353_p2[12:3]}};
        lshr_ln12_5_reg_2011 <= {{add_ln12_4_fu_1369_p2[12:3]}};
        temp_reg_2275 <= temp_fu_1671_p2;
        zext_ln12_reg_1794[9 : 0] <= zext_ln12_fu_1233_p1[9 : 0];
        zext_ln12_reg_1794_pp0_iter1_reg[9 : 0] <= zext_ln12_reg_1794[9 : 0];
        zext_ln12_reg_1794_pp0_iter2_reg[9 : 0] <= zext_ln12_reg_1794_pp0_iter1_reg[9 : 0];
        zext_ln12_reg_1794_pp0_iter3_reg[9 : 0] <= zext_ln12_reg_1794_pp0_iter2_reg[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln8_reg_2056 <= icmp_ln8_fu_1427_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_2_reg_2230 <= grp_fu_974_p2;
        mul_ln13_4_reg_2235 <= grp_fu_982_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_5_reg_2245 <= grp_fu_974_p2;
        mul_ln13_8_reg_2250 <= grp_fu_982_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1107 <= grp_fu_970_p2;
        reg_1111 <= grp_fu_978_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_3_reg_2080 <= grp_fu_990_p19;
        tmp_4_reg_2085 <= grp_fu_1029_p19;
        tmp_8_reg_2210 <= grp_fu_1068_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_5_reg_2215 <= grp_fu_1068_p19;
        tmp_6_reg_2220 <= grp_fu_990_p19;
        tmp_7_reg_2225 <= grp_fu_1029_p19;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_1433_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln7_reg_2061_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1131)) begin
            ap_phi_mux_icmp_ln86_phi_fu_963_p4 = icmp_ln8_reg_2056;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln86_phi_fu_963_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln86_phi_fu_963_p4 = icmp_ln8_reg_2056;
        end
    end else begin
        ap_phi_mux_icmp_ln86_phi_fu_963_p4 = icmp_ln8_reg_2056;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c4_load = 6'd0;
    end else begin
        ap_sig_allocacmp_c4_load = c4_fu_146;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvars_iv_next305_load = 7'd1;
    end else begin
        ap_sig_allocacmp_indvars_iv_next305_load = indvars_iv_next305_fu_150;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_r3_load = 7'd0;
    end else begin
        ap_sig_allocacmp_r3_load = r3_fu_142;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1029_p18 = trunc_ln8_reg_1771_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1029_p18 = trunc_ln8_reg_1771;
        end else begin
            grp_fu_1029_p18 = 'bx;
        end
    end else begin
        grp_fu_1029_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1068_p18 = trunc_ln8_reg_1771_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1068_p18 = trunc_ln8_reg_1771;
        end else begin
            grp_fu_1068_p18 = 'bx;
        end
    end else begin
        grp_fu_1068_p18 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_970_p0 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_970_p0 = filter_load_2;
    end else begin
        grp_fu_970_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_970_p1 = tmp_5_reg_2215;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_970_p1 = tmp_2_reg_2075;
    end else begin
        grp_fu_970_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_974_p0 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_974_p0 = filter_load_1;
    end else begin
        grp_fu_974_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_974_p1 = tmp_6_reg_2220;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_974_p1 = tmp_1_reg_2070;
    end else begin
        grp_fu_974_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_978_p0 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_978_p0 = filter_load_8;
    end else begin
        grp_fu_978_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_978_p1 = tmp_4_reg_2085;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_978_p1 = tmp_8_reg_2210;
    end else begin
        grp_fu_978_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_982_p0 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_982_p0 = filter_load;
    end else begin
        grp_fu_982_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_982_p1 = tmp_7_reg_2225;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_982_p1 = tmp_reg_2065;
    end else begin
        grp_fu_982_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_990_p18 = trunc_ln8_reg_1771_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_990_p18 = trunc_ln8_reg_1771;
        end else begin
            grp_fu_990_p18 = 'bx;
        end
    end else begin
        grp_fu_990_p18 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_7_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_6_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_5_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_8_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_4_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_3_fu_1313_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_497)) begin
        if ((trunc_ln8_reg_1771 == 3'd6)) begin
            orig_0_address1_local = zext_ln12_2_fu_1289_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd7)) begin
            orig_0_address1_local = zext_ln12_1_fu_1261_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd0)) begin
            orig_0_address1_local = zext_ln12_fu_1233_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_7_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_6_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_5_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_8_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_4_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_3_fu_1313_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_497)) begin
        if ((trunc_ln8_reg_1771 == 3'd7)) begin
            orig_1_address1_local = zext_ln12_2_fu_1289_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd0)) begin
            orig_1_address1_local = zext_ln12_1_fu_1261_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd1)) begin
            orig_1_address1_local = zext_ln12_fu_1233_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_7_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_6_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_5_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_8_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_4_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_3_fu_1313_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_497)) begin
        if ((trunc_ln8_reg_1771 == 3'd0)) begin
            orig_2_address1_local = zext_ln12_2_fu_1289_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd1)) begin
            orig_2_address1_local = zext_ln12_1_fu_1261_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd2)) begin
            orig_2_address1_local = zext_ln12_fu_1233_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_7_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_6_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_5_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_8_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_4_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_3_fu_1313_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_497)) begin
        if ((trunc_ln8_reg_1771 == 3'd1)) begin
            orig_3_address1_local = zext_ln12_2_fu_1289_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd2)) begin
            orig_3_address1_local = zext_ln12_1_fu_1261_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd3)) begin
            orig_3_address1_local = zext_ln12_fu_1233_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_7_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_6_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_5_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_8_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_4_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_3_fu_1313_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_497)) begin
        if ((trunc_ln8_reg_1771 == 3'd2)) begin
            orig_4_address1_local = zext_ln12_2_fu_1289_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd3)) begin
            orig_4_address1_local = zext_ln12_1_fu_1261_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd4)) begin
            orig_4_address1_local = zext_ln12_fu_1233_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_7_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_6_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_5_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_8_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_4_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_3_fu_1313_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_497)) begin
        if ((trunc_ln8_reg_1771 == 3'd3)) begin
            orig_5_address1_local = zext_ln12_2_fu_1289_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd4)) begin
            orig_5_address1_local = zext_ln12_1_fu_1261_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd5)) begin
            orig_5_address1_local = zext_ln12_fu_1233_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_7_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_6_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_5_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_8_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_4_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_3_fu_1313_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_497)) begin
        if ((trunc_ln8_reg_1771 == 3'd4)) begin
            orig_6_address1_local = zext_ln12_2_fu_1289_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd5)) begin
            orig_6_address1_local = zext_ln12_1_fu_1261_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd6)) begin
            orig_6_address1_local = zext_ln12_fu_1233_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_7_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_6_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_5_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_8_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_4_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_3_fu_1313_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_497)) begin
        if ((trunc_ln8_reg_1771 == 3'd5)) begin
            orig_7_address1_local = zext_ln12_2_fu_1289_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd6)) begin
            orig_7_address1_local = zext_ln12_1_fu_1261_p1;
        end else if ((trunc_ln8_reg_1771 == 3'd7)) begin
            orig_7_address1_local = zext_ln12_fu_1233_p1;
        end else begin
            orig_7_address1_local = 'bx;
        end
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1771 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1771_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1771_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1771_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1771_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1771_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1771_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1771_pp0_iter3_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1771_pp0_iter3_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln12_1_fu_1273_p2 = (tmp_9_fu_1221_p3 + 13'd2);
assign add_ln12_2_fu_1325_p2 = (tmp_s_fu_1301_p3 + 13'd1);
assign add_ln12_3_fu_1353_p2 = (tmp_s_fu_1301_p3 + 13'd2);
assign add_ln12_4_fu_1369_p2 = (empty_reg_1788 + 13'd1);
assign add_ln12_5_fu_1384_p2 = (empty_reg_1788 + 13'd2);
assign add_ln12_fu_1245_p2 = (tmp_9_fu_1221_p3 + 13'd1);
assign add_ln13_1_fu_1652_p2 = (reg_1107 + reg_1111);
assign add_ln13_2_fu_1667_p2 = (add_ln13_1_reg_2265 + add_ln13_reg_2260);
assign add_ln13_3_fu_1658_p2 = (mul_ln13_4_reg_2235 + mul_ln13_2_reg_2230);
assign add_ln13_4_fu_1637_p2 = (reg_1107 + reg_1111);
assign add_ln13_5_fu_1643_p2 = (add_ln13_4_fu_1637_p2 + mul_ln13_7_reg_2240);
assign add_ln13_6_fu_1662_p2 = (add_ln13_5_reg_2255 + add_ln13_3_fu_1658_p2);
assign add_ln13_fu_1648_p2 = (mul_ln13_5_reg_2245 + mul_ln13_8_reg_2250);
assign add_ln5_1_fu_1608_p2 = (zext_ln5_1_fu_1604_p1 + tmp_11_fu_1458_p3);
assign add_ln5_fu_1307_p3 = {{select_ln4_1_reg_1756}, {lshr_ln_reg_1781}};
assign add_ln7_fu_1411_p2 = (indvar_flatten2_fu_138 + 13'd1);
assign add_ln_fu_1227_p3 = {{r_reg_1762}, {lshr_ln_reg_1781}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1131 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln7_reg_2061 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_497 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign c_fu_1417_p2 = (select_ln4_reg_1749 + 6'd1);
assign empty_fu_1212_p2 = (tmp1_cast_cast_cast_fu_1208_p1 + tmp_10_fu_1174_p3);
assign grp_fu_1029_p17 = 'bx;
assign grp_fu_1068_p17 = 'bx;
assign grp_fu_990_p17 = 'bx;
assign icmp_ln7_fu_1433_p2 = ((indvar_flatten2_fu_138 == 13'd7811) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_1427_p2 = ((c_fu_1417_p2 == 6'd62) ? 1'b1 : 1'b0);
assign indvars_iv_next30_fu_1422_p2 = (r_reg_1762 + 7'd1);
assign indvars_iv_next30_mid1_fu_1152_p2 = (ap_sig_allocacmp_r3_load + 7'd2);
assign lshr_ln12_1_fu_1251_p4 = {{add_ln12_fu_1245_p2[12:3]}};
assign lshr_ln12_2_fu_1279_p4 = {{add_ln12_1_fu_1273_p2[12:3]}};
assign lshr_ln12_3_fu_1331_p4 = {{add_ln12_2_fu_1325_p2[12:3]}};
assign lshr_ln12_6_fu_1389_p4 = {{add_ln12_5_fu_1384_p2[12:3]}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign r_fu_1166_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_963_p4[0:0] == 1'b1) ? ap_sig_allocacmp_indvars_iv_next305_load : ap_sig_allocacmp_r3_load);
assign select_ln4_1_fu_1158_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_963_p4[0:0] == 1'b1) ? indvars_iv_next30_mid1_fu_1152_p2 : ap_sig_allocacmp_indvars_iv_next305_load);
assign select_ln4_cast1_fu_1196_p1 = select_ln4_fu_1144_p3;
assign select_ln4_fu_1144_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_963_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_c4_load);
assign sol_0_address0 = zext_ln12_reg_1794_pp0_iter3_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_2275;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln12_reg_1794_pp0_iter3_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_reg_2275;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_1794_pp0_iter3_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_reg_2275;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_1794_pp0_iter3_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_reg_2275;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln12_reg_1794_pp0_iter3_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = temp_reg_2275;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln12_reg_1794_pp0_iter3_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = temp_reg_2275;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln12_reg_1794_pp0_iter3_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = temp_reg_2275;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln12_reg_1794_pp0_iter3_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = temp_reg_2275;
assign sol_7_we0 = sol_7_we0_local;
assign temp_fu_1671_p2 = (add_ln13_6_reg_2270 + add_ln13_2_fu_1667_p2);
assign tmp1_cast_cast_cast_fu_1208_p1 = tmp1_cast_cast_fu_1200_p3;
assign tmp1_cast_cast_fu_1200_p3 = {{1'd1}, {select_ln4_cast1_fu_1196_p1}};
assign tmp_10_fu_1174_p3 = {{r_fu_1166_p3}, {6'd0}};
assign tmp_11_fu_1458_p3 = {{r_reg_1762}, {3'd0}};
assign tmp_1_fu_1504_p17 = 'bx;
assign tmp_2_fu_1543_p17 = 'bx;
assign tmp_9_fu_1221_p3 = {{r_reg_1762}, {select_ln4_reg_1749}};
assign tmp_fu_1465_p17 = 'bx;
assign tmp_s_fu_1301_p3 = {{select_ln4_1_reg_1756}, {select_ln4_reg_1749}};
assign trunc_ln8_fu_1182_p1 = select_ln4_fu_1144_p3[2:0];
assign zext_ln12_1_fu_1261_p1 = lshr_ln12_1_fu_1251_p4;
assign zext_ln12_2_fu_1289_p1 = lshr_ln12_2_fu_1279_p4;
assign zext_ln12_3_fu_1313_p1 = add_ln5_fu_1307_p3;
assign zext_ln12_4_fu_1341_p1 = lshr_ln12_3_fu_1331_p4;
assign zext_ln12_5_fu_1582_p1 = lshr_ln12_4_reg_2006;
assign zext_ln12_6_fu_1614_p1 = add_ln5_1_fu_1608_p2;
assign zext_ln12_7_fu_1626_p1 = lshr_ln12_5_reg_2011;
assign zext_ln12_8_fu_1399_p1 = lshr_ln12_6_fu_1389_p4;
assign zext_ln12_fu_1233_p1 = add_ln_fu_1227_p3;
assign zext_ln5_1_fu_1604_p1 = zext_ln5_cast_fu_1596_p3;
assign zext_ln5_cast_fu_1596_p3 = {{1'd1}, {zext_ln5_fu_1593_p1}};
assign zext_ln5_fu_1593_p1 = lshr_ln_reg_1781;
always @ (posedge ap_clk) begin
    zext_ln12_reg_1794[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1794_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1794_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1794_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 