module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v0_4_address0,v0_4_ce0,v0_4_q0,v0_5_address0,v0_5_ce0,v0_5_q0,v0_6_address0,v0_6_ce0,v0_6_q0,v0_7_address0,v0_7_ce0,v0_7_q0,phi_mul189,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v29_2_out,v29_2_out_ap_vld,grp_fu_8109_p_din0,grp_fu_8109_p_din1,grp_fu_8109_p_opcode,grp_fu_8109_p_dout0,grp_fu_8109_p_ce,grp_fu_8121_p_din0,grp_fu_8121_p_din1,grp_fu_8121_p_dout0,grp_fu_8121_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] phi_mul;
output  [6:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [6:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [6:0] v0_2_address0;
output   v0_2_ce0;
input  [63:0] v0_2_q0;
output  [6:0] v0_3_address0;
output   v0_3_ce0;
input  [63:0] v0_3_q0;
output  [6:0] v0_4_address0;
output   v0_4_ce0;
input  [63:0] v0_4_q0;
output  [6:0] v0_5_address0;
output   v0_5_ce0;
input  [63:0] v0_5_q0;
output  [6:0] v0_6_address0;
output   v0_6_ce0;
input  [63:0] v0_6_q0;
output  [6:0] v0_7_address0;
output   v0_7_ce0;
input  [63:0] v0_7_q0;
input  [11:0] phi_mul189;
output  [10:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [10:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [63:0] v29_2_out;
output   v29_2_out_ap_vld;
output  [63:0] grp_fu_8109_p_din0;
output  [63:0] grp_fu_8109_p_din1;
output  [0:0] grp_fu_8109_p_opcode;
input  [63:0] grp_fu_8109_p_dout0;
output   grp_fu_8109_p_ce;
output  [63:0] grp_fu_8121_p_din0;
output  [63:0] grp_fu_8121_p_din1;
input  [63:0] grp_fu_8121_p_dout0;
output   grp_fu_8121_p_ce;
reg ap_idle;
reg v29_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln68_reg_788;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] v24_1_reg_751;
wire   [9:0] add_ln69_fu_373_p2;
reg   [9:0] add_ln69_reg_756;
wire   [11:0] add_ln70_fu_379_p2;
reg   [11:0] add_ln70_reg_762;
reg   [2:0] tmp_reg_768;
reg   [2:0] trunc_ln_reg_773;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln70_fu_430_p2;
reg   [0:0] icmp_ln70_reg_778;
wire   [3:0] or_ln_fu_436_p3;
reg   [3:0] or_ln_reg_783;
wire   [0:0] icmp_ln68_fu_443_p2;
reg   [0:0] icmp_ln68_reg_788_pp0_iter1_reg;
wire   [9:0] add_ln69_1_fu_453_p2;
reg   [9:0] add_ln69_1_reg_792;
reg   [2:0] trunc_ln69_1_reg_798;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [11:0] add_ln70_1_fu_480_p2;
wire   [0:0] icmp_ln70_1_fu_497_p2;
reg   [0:0] icmp_ln70_1_reg_808;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [63:0] v25_fu_552_p19;
reg   [63:0] v25_reg_853;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] select_ln70_fu_607_p3;
reg   [63:0] select_ln70_reg_868;
wire   [63:0] v26_fu_626_p1;
wire   [63:0] v25_1_fu_662_p19;
reg   [63:0] v25_1_reg_918;
wire   [63:0] select_ln70_1_fu_707_p3;
reg   [63:0] select_ln70_1_reg_933;
wire   [63:0] v26_1_fu_714_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] v27_reg_943;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] v27_1_reg_953;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] v29_2_reg_958;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage7_subdone;
wire   [63:0] zext_ln69_fu_508_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln70_fu_591_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln69_1_fu_614_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_1_fu_701_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] v28_fu_106;
wire    ap_loop_init;
wire    ap_block_pp0_stage8;
reg   [3:0] v24_fu_110;
wire   [3:0] add_ln68_fu_597_p2;
reg   [3:0] ap_sig_allocacmp_v24_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage15_01001;
reg    v0_0_ce0_local;
reg   [6:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [6:0] v0_1_address0_local;
reg    v0_2_ce0_local;
reg   [6:0] v0_2_address0_local;
reg    v0_3_ce0_local;
reg   [6:0] v0_3_address0_local;
reg    v0_4_ce0_local;
reg   [6:0] v0_4_address0_local;
reg    v0_5_ce0_local;
reg   [6:0] v0_5_address0_local;
reg    v0_6_ce0_local;
reg   [6:0] v0_6_address0_local;
reg    v0_7_ce0_local;
reg   [6:0] v0_7_address0_local;
reg    v6_0_ce0_local;
reg   [10:0] v6_0_address0_local;
reg    v6_1_ce0_local;
reg   [10:0] v6_1_address0_local;
reg   [63:0] grp_fu_343_p0;
reg   [63:0] grp_fu_343_p1;
reg   [63:0] grp_fu_348_p0;
reg   [63:0] grp_fu_348_p1;
wire    ap_block_pp0_stage3;
wire   [9:0] zext_ln68_1_fu_369_p1;
wire   [11:0] zext_ln68_fu_365_p1;
wire   [11:0] grp_fu_385_p0;
wire   [7:0] grp_fu_401_p1;
wire   [9:0] mul_ln69_fu_409_p0;
wire   [11:0] mul_ln69_fu_409_p1;
wire   [20:0] mul_ln69_fu_409_p2;
wire   [11:0] add_ln70_2_fu_425_p2;
wire   [9:0] zext_ln68_3_fu_449_p1;
wire    ap_block_pp0_stage2;
wire   [9:0] mul_ln69_1_fu_464_p0;
wire   [11:0] mul_ln69_1_fu_464_p1;
wire   [20:0] mul_ln69_1_fu_464_p2;
wire   [11:0] zext_ln68_2_fu_458_p1;
wire   [11:0] add_ln70_3_fu_491_p2;
wire   [7:0] grp_fu_503_p1;
wire   [9:0] grp_fu_401_p2;
wire   [63:0] v25_fu_552_p2;
wire   [63:0] v25_fu_552_p4;
wire   [63:0] v25_fu_552_p6;
wire   [63:0] v25_fu_552_p8;
wire   [63:0] v25_fu_552_p10;
wire   [63:0] v25_fu_552_p12;
wire   [63:0] v25_fu_552_p14;
wire   [63:0] v25_fu_552_p16;
wire   [63:0] v25_fu_552_p17;
wire   [11:0] grp_fu_385_p2;
wire   [9:0] grp_fu_503_p2;
wire   [63:0] v25_1_fu_662_p2;
wire   [63:0] v25_1_fu_662_p4;
wire   [63:0] v25_1_fu_662_p6;
wire   [63:0] v25_1_fu_662_p8;
wire   [63:0] v25_1_fu_662_p10;
wire   [63:0] v25_1_fu_662_p12;
wire   [63:0] v25_1_fu_662_p14;
wire   [63:0] v25_1_fu_662_p16;
wire   [63:0] v25_1_fu_662_p17;
wire   [11:0] grp_fu_485_p2;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [20:0] mul_ln69_1_fu_464_p00;
wire   [20:0] mul_ln69_fu_409_p00;
wire   [2:0] v25_fu_552_p1;
wire   [2:0] v25_fu_552_p3;
wire   [2:0] v25_fu_552_p5;
wire   [2:0] v25_fu_552_p7;
wire  signed [2:0] v25_fu_552_p9;
wire  signed [2:0] v25_fu_552_p11;
wire  signed [2:0] v25_fu_552_p13;
wire  signed [2:0] v25_fu_552_p15;
wire   [2:0] v25_1_fu_662_p1;
wire   [2:0] v25_1_fu_662_p3;
wire   [2:0] v25_1_fu_662_p5;
wire   [2:0] v25_1_fu_662_p7;
wire  signed [2:0] v25_1_fu_662_p9;
wire  signed [2:0] v25_1_fu_662_p11;
wire  signed [2:0] v25_1_fu_662_p13;
wire  signed [2:0] v25_1_fu_662_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_106 = 64'd0;
#0 v24_fu_110 = 4'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_385_p0),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_385_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_reg_756),.din1(grp_fu_401_p1),.ce(1'b1),.dout(grp_fu_401_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U10(.din0(mul_ln69_fu_409_p0),.din1(mul_ln69_fu_409_p1),.dout(mul_ln69_fu_409_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U11(.din0(mul_ln69_1_fu_464_p0),.din1(mul_ln69_1_fu_464_p1),.dout(mul_ln69_1_fu_464_p2));
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(add_ln70_1_fu_480_p2),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_485_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_1_reg_792),.din1(grp_fu_503_p1),.ce(1'b1),.dout(grp_fu_503_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U14(.din0(v25_fu_552_p2),.din1(v25_fu_552_p4),.din2(v25_fu_552_p6),.din3(v25_fu_552_p8),.din4(v25_fu_552_p10),.din5(v25_fu_552_p12),.din6(v25_fu_552_p14),.din7(v25_fu_552_p16),.def(v25_fu_552_p17),.sel(trunc_ln_reg_773),.dout(v25_fu_552_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U15(.din0(v25_1_fu_662_p2),.din1(v25_1_fu_662_p4),.din2(v25_1_fu_662_p6),.din3(v25_1_fu_662_p8),.din4(v25_1_fu_662_p10),.din5(v25_1_fu_662_p12),.din6(v25_1_fu_662_p14),.din7(v25_1_fu_662_p16),.def(v25_1_fu_662_p17),.sel(trunc_ln69_1_reg_798),.dout(v25_1_fu_662_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage15) | ((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_110 <= 4'd0;
    end else if (((icmp_ln68_reg_788 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v24_fu_110 <= add_ln68_fu_597_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_106 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v28_fu_106 <= grp_fu_8109_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln69_1_reg_792 <= add_ln69_1_fu_453_p2;
        icmp_ln68_reg_788 <= icmp_ln68_fu_443_p2;
        icmp_ln68_reg_788_pp0_iter1_reg <= icmp_ln68_reg_788;
        icmp_ln70_reg_778 <= icmp_ln70_fu_430_p2;
        or_ln_reg_783[3 : 1] <= or_ln_fu_436_p3[3 : 1];
        trunc_ln_reg_773 <= {{mul_ln69_fu_409_p2[19:17]}};
        v25_1_reg_918 <= v25_1_fu_662_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln69_reg_756 <= add_ln69_fu_373_p2;
        add_ln70_reg_762 <= add_ln70_fu_379_p2;
        select_ln70_reg_868 <= select_ln70_fu_607_p3;
        tmp_reg_768 <= {{ap_sig_allocacmp_v24_1[3:1]}};
        v24_1_reg_751 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        v25_reg_853 <= v25_fu_552_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln70_1_reg_808 <= icmp_ln70_1_fu_497_p2;
        select_ln70_1_reg_933 <= select_ln70_1_fu_707_p3;
        trunc_ln69_1_reg_798 <= {{mul_ln69_1_fu_464_p2[19:17]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v27_1_reg_953 <= grp_fu_8121_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v27_reg_943 <= grp_fu_8121_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v29_2_reg_958 <= grp_fu_8109_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_788 == 1'd0) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln68_reg_788_pp0_iter1_reg == 1'd0))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v24_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_1 = v24_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_343_p0 = v29_2_reg_958;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_343_p0 = v28_fu_106;
    end else begin
        grp_fu_343_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_343_p1 = v27_1_reg_953;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_343_p1 = v27_reg_943;
    end else begin
        grp_fu_343_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_348_p0 = v25_1_reg_918;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_348_p0 = v25_reg_853;
        end else begin
            grp_fu_348_p0 = 'bx;
        end
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_348_p1 = v26_1_fu_714_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_348_p1 = v26_fu_626_p1;
        end else begin
            grp_fu_348_p1 = 'bx;
        end
    end else begin
        grp_fu_348_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln69_1_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v0_0_address0_local = zext_ln69_fu_508_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln69_1_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v0_1_address0_local = zext_ln69_fu_508_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln69_1_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v0_2_address0_local = zext_ln69_fu_508_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln69_1_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v0_3_address0_local = zext_ln69_fu_508_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_address0_local = zext_ln69_1_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v0_4_address0_local = zext_ln69_fu_508_p1;
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_address0_local = zext_ln69_1_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v0_5_address0_local = zext_ln69_fu_508_p1;
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_address0_local = zext_ln69_1_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v0_6_address0_local = zext_ln69_fu_508_p1;
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_address0_local = zext_ln69_1_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v0_7_address0_local = zext_ln69_fu_508_p1;
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln68_reg_788_pp0_iter1_reg == 1'd0))) begin
        v29_2_out_ap_vld = 1'b1;
    end else begin
        v29_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v6_0_address0_local = zext_ln70_1_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v6_0_address0_local = zext_ln70_fu_591_p1;
    end else begin
        v6_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v6_1_address0_local = zext_ln70_1_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v6_1_address0_local = zext_ln70_fu_591_p1;
    end else begin
        v6_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln68_fu_597_p2 = (v24_1_reg_751 + 4'd2);
assign add_ln69_1_fu_453_p2 = (zext_ln68_3_fu_449_p1 + phi_mul);
assign add_ln69_fu_373_p2 = (zext_ln68_1_fu_369_p1 + phi_mul);
assign add_ln70_1_fu_480_p2 = (zext_ln68_2_fu_458_p1 + phi_mul189);
assign add_ln70_2_fu_425_p2 = ($signed(add_ln70_reg_762) + $signed(12'd3036));
assign add_ln70_3_fu_491_p2 = ($signed(add_ln70_1_fu_480_p2) + $signed(12'd3036));
assign add_ln70_fu_379_p2 = (zext_ln68_fu_365_p1 + phi_mul189);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign grp_fu_385_p0 = (zext_ln68_fu_365_p1 + phi_mul189);
assign grp_fu_401_p1 = 10'd104;
assign grp_fu_503_p1 = 10'd104;
assign grp_fu_8109_p_ce = 1'b1;
assign grp_fu_8109_p_din0 = grp_fu_343_p0;
assign grp_fu_8109_p_din1 = grp_fu_343_p1;
assign grp_fu_8109_p_opcode = 2'd0;
assign grp_fu_8121_p_ce = 1'b1;
assign grp_fu_8121_p_din0 = grp_fu_348_p0;
assign grp_fu_8121_p_din1 = grp_fu_348_p1;
assign icmp_ln68_fu_443_p2 = ((or_ln_fu_436_p3 < 4'd13) ? 1'b1 : 1'b0);
assign icmp_ln70_1_fu_497_p2 = ((add_ln70_3_fu_491_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign icmp_ln70_fu_430_p2 = ((add_ln70_2_fu_425_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign mul_ln69_1_fu_464_p0 = mul_ln69_1_fu_464_p00;
assign mul_ln69_1_fu_464_p00 = add_ln69_1_reg_792;
assign mul_ln69_1_fu_464_p1 = 21'd1261;
assign mul_ln69_fu_409_p0 = mul_ln69_fu_409_p00;
assign mul_ln69_fu_409_p00 = add_ln69_reg_756;
assign mul_ln69_fu_409_p1 = 21'd1261;
assign or_ln_fu_436_p3 = {{tmp_reg_768}, {1'd1}};
assign select_ln70_1_fu_707_p3 = ((icmp_ln70_1_reg_808[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign select_ln70_fu_607_p3 = ((icmp_ln70_reg_778[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v25_1_fu_662_p10 = v0_4_q0;
assign v25_1_fu_662_p12 = v0_5_q0;
assign v25_1_fu_662_p14 = v0_6_q0;
assign v25_1_fu_662_p16 = v0_7_q0;
assign v25_1_fu_662_p17 = 'bx;
assign v25_1_fu_662_p2 = v0_0_q0;
assign v25_1_fu_662_p4 = v0_1_q0;
assign v25_1_fu_662_p6 = v0_2_q0;
assign v25_1_fu_662_p8 = v0_3_q0;
assign v25_fu_552_p10 = v0_4_q0;
assign v25_fu_552_p12 = v0_5_q0;
assign v25_fu_552_p14 = v0_6_q0;
assign v25_fu_552_p16 = v0_7_q0;
assign v25_fu_552_p17 = 'bx;
assign v25_fu_552_p2 = v0_0_q0;
assign v25_fu_552_p4 = v0_1_q0;
assign v25_fu_552_p6 = v0_2_q0;
assign v25_fu_552_p8 = v0_3_q0;
assign v26_1_fu_714_p1 = select_ln70_1_reg_933;
assign v26_fu_626_p1 = select_ln70_reg_868;
assign v29_2_out = grp_fu_8109_p_dout0;
assign v6_0_address0 = v6_0_address0_local;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = v6_1_address0_local;
assign v6_1_ce0 = v6_1_ce0_local;
assign zext_ln68_1_fu_369_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln68_2_fu_458_p1 = or_ln_reg_783;
assign zext_ln68_3_fu_449_p1 = or_ln_fu_436_p3;
assign zext_ln68_fu_365_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_1_fu_614_p1 = grp_fu_503_p2;
assign zext_ln69_fu_508_p1 = grp_fu_401_p2;
assign zext_ln70_1_fu_701_p1 = grp_fu_485_p2;
assign zext_ln70_fu_591_p1 = grp_fu_385_p2;
always @ (posedge ap_clk) begin
    or_ln_reg_783[0] <= 1'b1;
end
endmodule 