module stencil_stencil_Pipeline_stencil_label1_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,filter_load_6,filter_load_7,filter_load_5,filter_load_3,filter_load_4,filter_load_1,filter_load_2,filter_load_8,filter_load); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [10:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [10:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
input  [31:0] filter_load_6;
input  [31:0] filter_load_7;
input  [31:0] filter_load_5;
input  [31:0] filter_load_3;
input  [31:0] filter_load_4;
input  [31:0] filter_load_1;
input  [31:0] filter_load_2;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
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
wire   [0:0] icmp_ln7_fu_1004_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_574_p2;
reg   [31:0] reg_663;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_582_p2;
reg   [31:0] reg_667;
wire   [31:0] grp_fu_586_p2;
reg   [31:0] reg_671;
wire   [5:0] select_ln4_fu_704_p3;
reg   [5:0] select_ln4_reg_1233;
wire   [6:0] r_fu_712_p3;
reg   [6:0] r_reg_1239;
wire   [1:0] trunc_ln8_fu_728_p1;
reg   [1:0] trunc_ln8_reg_1248;
reg   [1:0] trunc_ln8_reg_1248_pp0_iter1_reg;
reg   [1:0] trunc_ln8_reg_1248_pp0_iter2_reg;
reg   [1:0] trunc_ln8_reg_1248_pp0_iter3_reg;
reg   [3:0] lshr_ln5_reg_1258;
wire   [12:0] empty_fu_754_p2;
reg   [12:0] empty_reg_1265;
wire   [12:0] empty_8_fu_776_p2;
reg   [12:0] empty_8_reg_1271;
wire   [63:0] zext_ln12_fu_804_p1;
reg   [63:0] zext_ln12_reg_1277;
reg   [63:0] zext_ln12_reg_1277_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_1277_pp0_iter2_reg;
reg   [63:0] zext_ln12_reg_1277_pp0_iter3_reg;
reg   [10:0] lshr_ln12_3_reg_1385;
wire   [10:0] add_ln5_2_fu_938_p2;
reg   [10:0] add_ln5_2_reg_1390;
reg   [10:0] lshr_ln12_4_reg_1395;
wire   [0:0] icmp_ln8_fu_993_p2;
reg   [0:0] icmp_ln8_reg_1420;
reg   [0:0] icmp_ln7_reg_1425;
reg   [0:0] icmp_ln7_reg_1425_pp0_iter1_reg;
reg   [0:0] icmp_ln7_reg_1425_pp0_iter2_reg;
reg   [0:0] icmp_ln7_reg_1425_pp0_iter3_reg;
wire  signed [31:0] tmp_fu_1029_p11;
reg  signed [31:0] tmp_reg_1429;
wire  signed [31:0] tmp_1_fu_1052_p11;
reg  signed [31:0] tmp_1_reg_1434;
wire  signed [31:0] tmp_2_fu_1075_p11;
reg  signed [31:0] tmp_2_reg_1439;
wire  signed [31:0] grp_fu_594_p11;
reg  signed [31:0] tmp_3_reg_1444;
wire  signed [31:0] grp_fu_617_p11;
reg  signed [31:0] tmp_4_reg_1449;
wire  signed [31:0] grp_fu_640_p11;
reg  signed [31:0] tmp_8_reg_1514;
reg  signed [31:0] tmp_5_reg_1519;
reg  signed [31:0] tmp_6_reg_1524;
reg  signed [31:0] tmp_7_reg_1529;
wire   [31:0] grp_fu_578_p2;
reg   [31:0] mul_ln13_5_reg_1534;
wire   [31:0] grp_fu_590_p2;
reg   [31:0] mul_ln13_8_reg_1539;
reg   [31:0] mul_ln13_1_reg_1544;
wire   [31:0] add_ln13_5_fu_1125_p2;
reg   [31:0] add_ln13_5_reg_1549;
wire   [31:0] add_ln13_fu_1131_p2;
reg   [31:0] add_ln13_reg_1554;
wire   [31:0] add_ln13_1_fu_1136_p2;
reg   [31:0] add_ln13_1_reg_1559;
wire   [31:0] add_ln13_6_fu_1146_p2;
reg   [31:0] add_ln13_6_reg_1564;
wire   [31:0] temp_fu_1155_p2;
reg   [31:0] temp_reg_1569;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln85_phi_fu_567_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_828_p1;
wire   [63:0] zext_ln12_2_fu_852_p1;
wire   [63:0] zext_ln12_3_fu_877_p1;
wire   [63:0] zext_ln12_4_fu_900_p1;
wire   [63:0] zext_ln12_8_fu_974_p1;
wire   [63:0] zext_ln12_5_fu_1098_p1;
wire   [63:0] zext_ln12_6_fu_1105_p1;
wire   [63:0] zext_ln12_7_fu_1112_p1;
reg   [12:0] indvar_flatten2_fu_118;
wire   [12:0] add_ln7_1_fu_982_p2;
reg   [6:0] r3_fu_122;
reg   [6:0] ap_sig_allocacmp_r3_load;
reg   [5:0] c4_fu_126;
wire   [5:0] c_fu_988_p2;
reg   [5:0] ap_sig_allocacmp_c4_load;
reg   [6:0] add_ln76_fu_130;
wire   [6:0] add_ln7_fu_999_p2;
reg   [6:0] ap_sig_allocacmp_add_ln76_load;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [10:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg   [10:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg  signed [31:0] grp_fu_574_p0;
reg  signed [31:0] grp_fu_574_p1;
reg  signed [31:0] grp_fu_578_p0;
reg  signed [31:0] grp_fu_578_p1;
reg  signed [31:0] grp_fu_582_p0;
reg  signed [31:0] grp_fu_582_p1;
reg  signed [31:0] grp_fu_586_p0;
reg  signed [31:0] grp_fu_586_p1;
wire   [31:0] grp_fu_594_p9;
reg   [1:0] grp_fu_594_p10;
wire   [31:0] grp_fu_617_p9;
reg   [1:0] grp_fu_617_p10;
wire   [31:0] grp_fu_640_p9;
reg   [1:0] grp_fu_640_p10;
wire   [6:0] tmp1_cast_cast_fu_742_p3;
wire   [12:0] tmp1_cast_cast_cast_fu_750_p1;
wire   [12:0] tmp_s_fu_720_p3;
wire   [6:0] select_ln4_cast1_fu_760_p1;
wire   [7:0] tmp3_cast_cast_fu_764_p3;
wire   [12:0] tmp3_cast_cast_cast_fu_772_p1;
wire   [10:0] add_ln5_fu_798_p3;
wire   [12:0] tmp_9_fu_792_p3;
wire   [12:0] add_ln12_fu_812_p2;
wire   [10:0] lshr_ln_fu_818_p4;
wire   [12:0] add_ln12_1_fu_836_p2;
wire   [10:0] lshr_ln12_1_fu_842_p4;
wire   [4:0] zext_ln5_cast_fu_860_p3;
wire   [10:0] zext_ln5_fu_867_p1;
wire   [10:0] p_udiv_fu_785_p3;
wire   [10:0] add_ln5_1_fu_871_p2;
wire   [12:0] add_ln12_2_fu_885_p2;
wire   [10:0] lshr_ln12_2_fu_890_p4;
wire   [12:0] add_ln12_3_fu_908_p2;
wire   [4:0] zext_ln5_1_fu_923_p1;
wire   [5:0] zext_ln5_1_cast_fu_926_p3;
wire   [10:0] zext_ln5_2_fu_934_p1;
wire   [12:0] add_ln12_4_fu_944_p2;
wire   [12:0] add_ln12_5_fu_959_p2;
wire   [10:0] lshr_ln12_5_fu_964_p4;
wire   [31:0] tmp_fu_1029_p9;
wire   [31:0] tmp_1_fu_1052_p9;
wire   [31:0] tmp_2_fu_1075_p9;
wire   [31:0] add_ln13_4_fu_1119_p2;
wire   [31:0] add_ln13_3_fu_1142_p2;
wire   [31:0] add_ln13_2_fu_1151_p2;
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
reg    ap_condition_852;
reg    ap_condition_362;
wire   [1:0] grp_fu_594_p1;
wire   [1:0] grp_fu_594_p3;
wire  signed [1:0] grp_fu_594_p5;
wire  signed [1:0] grp_fu_594_p7;
wire  signed [1:0] grp_fu_617_p1;
wire   [1:0] grp_fu_617_p3;
wire   [1:0] grp_fu_617_p5;
wire  signed [1:0] grp_fu_617_p7;
wire  signed [1:0] grp_fu_640_p1;
wire  signed [1:0] grp_fu_640_p3;
wire   [1:0] grp_fu_640_p5;
wire   [1:0] grp_fu_640_p7;
wire   [1:0] tmp_fu_1029_p1;
wire   [1:0] tmp_fu_1029_p3;
wire  signed [1:0] tmp_fu_1029_p5;
wire  signed [1:0] tmp_fu_1029_p7;
wire  signed [1:0] tmp_1_fu_1052_p1;
wire   [1:0] tmp_1_fu_1052_p3;
wire   [1:0] tmp_1_fu_1052_p5;
wire  signed [1:0] tmp_1_fu_1052_p7;
wire  signed [1:0] tmp_2_fu_1075_p1;
wire  signed [1:0] tmp_2_fu_1075_p3;
wire   [1:0] tmp_2_fu_1075_p5;
wire   [1:0] tmp_2_fu_1075_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_118 = 13'd0;
#0 r3_fu_122 = 7'd0;
#0 c4_fu_126 = 6'd0;
#0 add_ln76_fu_130 = 7'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_574_p0),.din1(grp_fu_574_p1),.ce(1'b1),.dout(grp_fu_574_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_578_p0),.din1(grp_fu_578_p1),.ce(1'b1),.dout(grp_fu_578_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_582_p0),.din1(grp_fu_582_p1),.ce(1'b1),.dout(grp_fu_582_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_586_p0),.din1(grp_fu_586_p1),.ce(1'b1),.dout(grp_fu_586_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(filter_load),.din1(tmp_reg_1429),.ce(1'b1),.dout(grp_fu_590_p2));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U6(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(grp_fu_594_p9),.sel(grp_fu_594_p10),.dout(grp_fu_594_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U7(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(grp_fu_617_p9),.sel(grp_fu_617_p10),.dout(grp_fu_617_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U8(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(grp_fu_640_p9),.sel(grp_fu_640_p10),.dout(grp_fu_640_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U9(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_fu_1029_p9),.sel(trunc_ln8_reg_1248),.dout(tmp_fu_1029_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U10(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_1_fu_1052_p9),.sel(trunc_ln8_reg_1248),.dout(tmp_1_fu_1052_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U11(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_2_fu_1075_p9),.sel(trunc_ln8_reg_1248),.dout(tmp_2_fu_1075_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln76_fu_130 <= 7'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln76_fu_130 <= add_ln7_fu_999_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0)))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c4_fu_126 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c4_fu_126 <= c_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_118 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten2_fu_118 <= add_ln7_1_fu_982_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r3_fu_122 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r3_fu_122 <= r_reg_1239;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_1_reg_1559 <= add_ln13_1_fu_1136_p2;
        add_ln13_6_reg_1564 <= add_ln13_6_fu_1146_p2;
        add_ln13_reg_1554 <= add_ln13_fu_1131_p2;
        empty_8_reg_1271 <= empty_8_fu_776_p2;
        empty_reg_1265 <= empty_fu_754_p2;
        lshr_ln5_reg_1258 <= {{select_ln4_fu_704_p3[5:2]}};
        mul_ln13_8_reg_1539 <= grp_fu_590_p2;
        r_reg_1239 <= r_fu_712_p3;
        select_ln4_reg_1233 <= select_ln4_fu_704_p3;
        tmp_1_reg_1434 <= tmp_1_fu_1052_p11;
        tmp_2_reg_1439 <= tmp_2_fu_1075_p11;
        tmp_reg_1429 <= tmp_fu_1029_p11;
        trunc_ln8_reg_1248 <= trunc_ln8_fu_728_p1;
        trunc_ln8_reg_1248_pp0_iter1_reg <= trunc_ln8_reg_1248;
        trunc_ln8_reg_1248_pp0_iter2_reg <= trunc_ln8_reg_1248_pp0_iter1_reg;
        trunc_ln8_reg_1248_pp0_iter3_reg <= trunc_ln8_reg_1248_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_5_reg_1549 <= add_ln13_5_fu_1125_p2;
        add_ln5_2_reg_1390 <= add_ln5_2_fu_938_p2;
        icmp_ln7_reg_1425 <= icmp_ln7_fu_1004_p2;
        icmp_ln7_reg_1425_pp0_iter1_reg <= icmp_ln7_reg_1425;
        icmp_ln7_reg_1425_pp0_iter2_reg <= icmp_ln7_reg_1425_pp0_iter1_reg;
        icmp_ln7_reg_1425_pp0_iter3_reg <= icmp_ln7_reg_1425_pp0_iter2_reg;
        lshr_ln12_3_reg_1385 <= {{add_ln12_3_fu_908_p2[12:2]}};
        lshr_ln12_4_reg_1395 <= {{add_ln12_4_fu_944_p2[12:2]}};
        temp_reg_1569 <= temp_fu_1155_p2;
        zext_ln12_reg_1277[10 : 0] <= zext_ln12_fu_804_p1[10 : 0];
        zext_ln12_reg_1277_pp0_iter1_reg[10 : 0] <= zext_ln12_reg_1277[10 : 0];
        zext_ln12_reg_1277_pp0_iter2_reg[10 : 0] <= zext_ln12_reg_1277_pp0_iter1_reg[10 : 0];
        zext_ln12_reg_1277_pp0_iter3_reg[10 : 0] <= zext_ln12_reg_1277_pp0_iter2_reg[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln8_reg_1420 <= icmp_ln8_fu_993_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_1_reg_1544 <= grp_fu_578_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_5_reg_1534 <= grp_fu_578_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_663 <= grp_fu_574_p2;
        reg_667 <= grp_fu_582_p2;
        reg_671 <= grp_fu_586_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_3_reg_1444 <= grp_fu_594_p11;
        tmp_4_reg_1449 <= grp_fu_617_p11;
        tmp_8_reg_1514 <= grp_fu_640_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_5_reg_1519 <= grp_fu_640_p11;
        tmp_6_reg_1524 <= grp_fu_594_p11;
        tmp_7_reg_1529 <= grp_fu_617_p11;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_1004_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln7_reg_1425_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_852)) begin
            ap_phi_mux_icmp_ln85_phi_fu_567_p4 = icmp_ln8_reg_1420;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln85_phi_fu_567_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln85_phi_fu_567_p4 = icmp_ln8_reg_1420;
        end
    end else begin
        ap_phi_mux_icmp_ln85_phi_fu_567_p4 = icmp_ln8_reg_1420;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_add_ln76_load = 7'd1;
    end else begin
        ap_sig_allocacmp_add_ln76_load = add_ln76_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c4_load = 6'd0;
    end else begin
        ap_sig_allocacmp_c4_load = c4_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_r3_load = 7'd0;
    end else begin
        ap_sig_allocacmp_r3_load = r3_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p0 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p0 = filter_load_3;
    end else begin
        grp_fu_574_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p1 = tmp_6_reg_1524;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p1 = tmp_3_reg_1444;
    end else begin
        grp_fu_574_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_578_p0 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_578_p0 = filter_load_1;
    end else begin
        grp_fu_578_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_578_p1 = tmp_7_reg_1529;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_578_p1 = tmp_1_reg_1434;
    end else begin
        grp_fu_578_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_582_p0 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_582_p0 = filter_load_2;
    end else begin
        grp_fu_582_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_582_p1 = tmp_5_reg_1519;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_582_p1 = tmp_2_reg_1439;
    end else begin
        grp_fu_582_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_586_p0 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_586_p0 = filter_load_8;
    end else begin
        grp_fu_586_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_586_p1 = tmp_4_reg_1449;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_586_p1 = tmp_8_reg_1514;
    end else begin
        grp_fu_586_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_594_p10 = trunc_ln8_reg_1248_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_594_p10 = trunc_ln8_reg_1248;
        end else begin
            grp_fu_594_p10 = 'bx;
        end
    end else begin
        grp_fu_594_p10 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_617_p10 = trunc_ln8_reg_1248_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_617_p10 = trunc_ln8_reg_1248;
        end else begin
            grp_fu_617_p10 = 'bx;
        end
    end else begin
        grp_fu_617_p10 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_640_p10 = trunc_ln8_reg_1248_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_640_p10 = trunc_ln8_reg_1248;
        end else begin
            grp_fu_640_p10 = 'bx;
        end
    end else begin
        grp_fu_640_p10 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd3))) begin
        orig_0_address0_local = zext_ln12_7_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd0))) begin
        orig_0_address0_local = zext_ln12_6_fu_1105_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd2))) begin
        orig_0_address0_local = zext_ln12_5_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd2))) begin
        orig_0_address0_local = zext_ln12_8_fu_974_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd3))) begin
        orig_0_address0_local = zext_ln12_4_fu_900_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd0))) begin
        orig_0_address0_local = zext_ln12_3_fu_877_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_362)) begin
        if ((trunc_ln8_reg_1248 == 2'd2)) begin
            orig_0_address1_local = zext_ln12_2_fu_852_p1;
        end else if ((trunc_ln8_reg_1248 == 2'd3)) begin
            orig_0_address1_local = zext_ln12_1_fu_828_p1;
        end else if ((trunc_ln8_reg_1248 == 2'd0)) begin
            orig_0_address1_local = zext_ln12_fu_804_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd0))) begin
        orig_1_address0_local = zext_ln12_7_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd1))) begin
        orig_1_address0_local = zext_ln12_6_fu_1105_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd3))) begin
        orig_1_address0_local = zext_ln12_5_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd3))) begin
        orig_1_address0_local = zext_ln12_8_fu_974_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd0))) begin
        orig_1_address0_local = zext_ln12_4_fu_900_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd1))) begin
        orig_1_address0_local = zext_ln12_3_fu_877_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_362)) begin
        if ((trunc_ln8_reg_1248 == 2'd3)) begin
            orig_1_address1_local = zext_ln12_2_fu_852_p1;
        end else if ((trunc_ln8_reg_1248 == 2'd0)) begin
            orig_1_address1_local = zext_ln12_1_fu_828_p1;
        end else if ((trunc_ln8_reg_1248 == 2'd1)) begin
            orig_1_address1_local = zext_ln12_fu_804_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd0)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd1))) begin
        orig_2_address0_local = zext_ln12_7_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd2))) begin
        orig_2_address0_local = zext_ln12_6_fu_1105_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd0))) begin
        orig_2_address0_local = zext_ln12_5_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd0))) begin
        orig_2_address0_local = zext_ln12_8_fu_974_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd1))) begin
        orig_2_address0_local = zext_ln12_4_fu_900_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd2))) begin
        orig_2_address0_local = zext_ln12_3_fu_877_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_362)) begin
        if ((trunc_ln8_reg_1248 == 2'd0)) begin
            orig_2_address1_local = zext_ln12_2_fu_852_p1;
        end else if ((trunc_ln8_reg_1248 == 2'd1)) begin
            orig_2_address1_local = zext_ln12_1_fu_828_p1;
        end else if ((trunc_ln8_reg_1248 == 2'd2)) begin
            orig_2_address1_local = zext_ln12_fu_804_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd0)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd2))) begin
        orig_3_address0_local = zext_ln12_7_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd3))) begin
        orig_3_address0_local = zext_ln12_6_fu_1105_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd1))) begin
        orig_3_address0_local = zext_ln12_5_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd1))) begin
        orig_3_address0_local = zext_ln12_8_fu_974_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd2))) begin
        orig_3_address0_local = zext_ln12_4_fu_900_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd3))) begin
        orig_3_address0_local = zext_ln12_3_fu_877_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_362)) begin
        if ((trunc_ln8_reg_1248 == 2'd1)) begin
            orig_3_address1_local = zext_ln12_2_fu_852_p1;
        end else if ((trunc_ln8_reg_1248 == 2'd2)) begin
            orig_3_address1_local = zext_ln12_1_fu_828_p1;
        end else if ((trunc_ln8_reg_1248 == 2'd3)) begin
            orig_3_address1_local = zext_ln12_fu_804_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_1248 == 2'd1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_1248 == 2'd1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1248_pp0_iter3_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1248_pp0_iter3_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1248_pp0_iter3_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1248_pp0_iter3_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
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
assign add_ln12_1_fu_836_p2 = (tmp_9_fu_792_p3 + 13'd2);
assign add_ln12_2_fu_885_p2 = (empty_reg_1265 + 13'd1);
assign add_ln12_3_fu_908_p2 = (empty_reg_1265 + 13'd2);
assign add_ln12_4_fu_944_p2 = (empty_8_reg_1271 + 13'd1);
assign add_ln12_5_fu_959_p2 = (empty_8_reg_1271 + 13'd2);
assign add_ln12_fu_812_p2 = (tmp_9_fu_792_p3 + 13'd1);
assign add_ln13_1_fu_1136_p2 = (reg_667 + reg_671);
assign add_ln13_2_fu_1151_p2 = (add_ln13_1_reg_1559 + add_ln13_reg_1554);
assign add_ln13_3_fu_1142_p2 = (mul_ln13_8_reg_1539 + mul_ln13_5_reg_1534);
assign add_ln13_4_fu_1119_p2 = (reg_667 + reg_671);
assign add_ln13_5_fu_1125_p2 = (add_ln13_4_fu_1119_p2 + reg_663);
assign add_ln13_6_fu_1146_p2 = (add_ln13_5_reg_1549 + add_ln13_3_fu_1142_p2);
assign add_ln13_fu_1131_p2 = (reg_663 + mul_ln13_1_reg_1544);
assign add_ln5_1_fu_871_p2 = (zext_ln5_fu_867_p1 + p_udiv_fu_785_p3);
assign add_ln5_2_fu_938_p2 = (zext_ln5_2_fu_934_p1 + p_udiv_fu_785_p3);
assign add_ln5_fu_798_p3 = {{r_reg_1239}, {lshr_ln5_reg_1258}};
assign add_ln7_1_fu_982_p2 = (indvar_flatten2_fu_118 + 13'd1);
assign add_ln7_fu_999_p2 = (r_reg_1239 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_362 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_852 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln7_reg_1425 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign c_fu_988_p2 = (select_ln4_reg_1233 + 6'd1);
assign empty_8_fu_776_p2 = (tmp3_cast_cast_cast_fu_772_p1 + tmp_s_fu_720_p3);
assign empty_fu_754_p2 = (tmp1_cast_cast_cast_fu_750_p1 + tmp_s_fu_720_p3);
assign grp_fu_594_p9 = 'bx;
assign grp_fu_617_p9 = 'bx;
assign grp_fu_640_p9 = 'bx;
assign icmp_ln7_fu_1004_p2 = ((indvar_flatten2_fu_118 == 13'd7811) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_993_p2 = ((c_fu_988_p2 == 6'd62) ? 1'b1 : 1'b0);
assign lshr_ln12_1_fu_842_p4 = {{add_ln12_1_fu_836_p2[12:2]}};
assign lshr_ln12_2_fu_890_p4 = {{add_ln12_2_fu_885_p2[12:2]}};
assign lshr_ln12_5_fu_964_p4 = {{add_ln12_5_fu_959_p2[12:2]}};
assign lshr_ln_fu_818_p4 = {{add_ln12_fu_812_p2[12:2]}};
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
assign p_udiv_fu_785_p3 = {{r_reg_1239}, {4'd0}};
assign r_fu_712_p3 = ((ap_phi_mux_icmp_ln85_phi_fu_567_p4[0:0] == 1'b1) ? ap_sig_allocacmp_add_ln76_load : ap_sig_allocacmp_r3_load);
assign select_ln4_cast1_fu_760_p1 = select_ln4_fu_704_p3;
assign select_ln4_fu_704_p3 = ((ap_phi_mux_icmp_ln85_phi_fu_567_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_c4_load);
assign sol_0_address0 = zext_ln12_reg_1277_pp0_iter3_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_1569;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln12_reg_1277_pp0_iter3_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_reg_1569;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_1277_pp0_iter3_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_reg_1569;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_1277_pp0_iter3_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_reg_1569;
assign sol_3_we0 = sol_3_we0_local;
assign temp_fu_1155_p2 = (add_ln13_6_reg_1564 + add_ln13_2_fu_1151_p2);
assign tmp1_cast_cast_cast_fu_750_p1 = tmp1_cast_cast_fu_742_p3;
assign tmp1_cast_cast_fu_742_p3 = {{1'd1}, {select_ln4_fu_704_p3}};
assign tmp3_cast_cast_cast_fu_772_p1 = tmp3_cast_cast_fu_764_p3;
assign tmp3_cast_cast_fu_764_p3 = {{1'd1}, {select_ln4_cast1_fu_760_p1}};
assign tmp_1_fu_1052_p9 = 'bx;
assign tmp_2_fu_1075_p9 = 'bx;
assign tmp_9_fu_792_p3 = {{r_reg_1239}, {select_ln4_reg_1233}};
assign tmp_fu_1029_p9 = 'bx;
assign tmp_s_fu_720_p3 = {{r_fu_712_p3}, {6'd0}};
assign trunc_ln8_fu_728_p1 = select_ln4_fu_704_p3[1:0];
assign zext_ln12_1_fu_828_p1 = lshr_ln_fu_818_p4;
assign zext_ln12_2_fu_852_p1 = lshr_ln12_1_fu_842_p4;
assign zext_ln12_3_fu_877_p1 = add_ln5_1_fu_871_p2;
assign zext_ln12_4_fu_900_p1 = lshr_ln12_2_fu_890_p4;
assign zext_ln12_5_fu_1098_p1 = lshr_ln12_3_reg_1385;
assign zext_ln12_6_fu_1105_p1 = add_ln5_2_reg_1390;
assign zext_ln12_7_fu_1112_p1 = lshr_ln12_4_reg_1395;
assign zext_ln12_8_fu_974_p1 = lshr_ln12_5_fu_964_p4;
assign zext_ln12_fu_804_p1 = add_ln5_fu_798_p3;
assign zext_ln5_1_cast_fu_926_p3 = {{1'd1}, {zext_ln5_1_fu_923_p1}};
assign zext_ln5_1_fu_923_p1 = lshr_ln5_reg_1258;
assign zext_ln5_2_fu_934_p1 = zext_ln5_1_cast_fu_926_p3;
assign zext_ln5_cast_fu_860_p3 = {{1'd1}, {lshr_ln5_reg_1258}};
assign zext_ln5_fu_867_p1 = zext_ln5_cast_fu_860_p3;
always @ (posedge ap_clk) begin
    zext_ln12_reg_1277[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1277_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1277_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1277_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 