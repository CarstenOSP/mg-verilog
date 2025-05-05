module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,trunc_ln1,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v6_2_address0,v6_2_ce0,v6_2_q0,v6_3_address0,v6_3_ce0,v6_3_q0,empty_101,empty,v29_4_out,v29_4_out_ap_vld,grp_fu_4954_p_din0,grp_fu_4954_p_din1,grp_fu_4954_p_opcode,grp_fu_4954_p_dout0,grp_fu_4954_p_ce,grp_fu_4962_p_din0,grp_fu_4962_p_din1,grp_fu_4962_p_dout0,grp_fu_4962_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] phi_mul;
output  [9:0] v0_address0;
output   v0_ce0;
input  [63:0] v0_q0;
output  [9:0] v0_address1;
output   v0_ce1;
input  [63:0] v0_q1;
input  [9:0] trunc_ln1;
output  [9:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [9:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [9:0] v6_2_address0;
output   v6_2_ce0;
input  [63:0] v6_2_q0;
output  [9:0] v6_3_address0;
output   v6_3_ce0;
input  [63:0] v6_3_q0;
input  [1:0] empty_101;
input  [11:0] empty;
output  [63:0] v29_4_out;
output   v29_4_out_ap_vld;
output  [63:0] grp_fu_4954_p_din0;
output  [63:0] grp_fu_4954_p_din1;
output  [0:0] grp_fu_4954_p_opcode;
input  [63:0] grp_fu_4954_p_dout0;
output   grp_fu_4954_p_ce;
output  [63:0] grp_fu_4962_p_din0;
output  [63:0] grp_fu_4962_p_din1;
input  [63:0] grp_fu_4962_p_dout0;
output   grp_fu_4962_p_ce;
reg ap_idle;
reg v29_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] icmp_ln68_reg_818;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_327;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_331;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] tmp_65_read_fu_104_p2;
wire   [1:0] tmp_65_reg_768;
reg   [3:0] v24_1_reg_782;
wire   [1:0] lshr_ln_fu_364_p4;
reg   [1:0] lshr_ln_reg_792;
wire   [0:0] icmp_ln68_fu_410_p2;
wire   [63:0] v26_fu_475_p11;
reg   [63:0] v26_reg_847;
reg   [63:0] v0_load_1_reg_852;
wire   [63:0] v26_1_fu_514_p11;
reg   [63:0] v26_1_reg_857;
wire   [63:0] v25_fu_633_p1;
wire   [63:0] v26_2_fu_654_p11;
reg   [63:0] v26_2_reg_917;
reg   [63:0] v0_load_3_reg_922;
wire   [63:0] v26_3_fu_693_p11;
reg   [63:0] v26_3_reg_927;
wire   [63:0] v25_1_fu_716_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] v25_2_fu_720_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] v25_3_fu_725_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] v27_reg_947;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] v27_1_reg_957;
reg   [63:0] v27_2_reg_962;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] v27_3_reg_967;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln69_fu_359_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_1_fu_384_p1;
wire   [63:0] zext_ln69_1_fu_430_p1;
wire   [63:0] zext_ln70_2_fu_451_p1;
wire   [63:0] zext_ln69_4_fu_557_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln70_3_fu_577_p1;
wire   [63:0] zext_ln69_7_fu_605_p1;
wire   [63:0] zext_ln70_4_fu_625_p1;
reg   [63:0] v28_fu_90;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [3:0] v24_fu_94;
wire   [3:0] add_ln68_fu_733_p2;
wire    ap_block_pp0_stage31_11001;
reg   [3:0] ap_sig_allocacmp_v24_1;
wire    ap_block_pp0_stage16_01001;
reg    v0_ce1_local;
reg   [9:0] v0_address1_local;
reg    v0_ce0_local;
reg   [9:0] v0_address0_local;
reg    v6_0_ce0_local;
reg   [9:0] v6_0_address0_local;
reg    v6_1_ce0_local;
reg   [9:0] v6_1_address0_local;
reg    v6_2_ce0_local;
reg   [9:0] v6_2_address0_local;
reg    v6_3_ce0_local;
reg   [9:0] v6_3_address0_local;
reg   [63:0] grp_fu_318_p0;
reg   [63:0] grp_fu_318_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25;
reg   [63:0] grp_fu_323_p0;
reg   [63:0] grp_fu_323_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire   [9:0] zext_ln68_fu_349_p1;
wire   [9:0] add_ln69_fu_353_p2;
wire   [9:0] zext_ln70_fu_374_p1;
wire   [9:0] add_ln70_fu_378_p2;
wire   [2:0] tmp_fu_392_p4;
wire   [3:0] or_ln_fu_402_p3;
wire   [9:0] zext_ln68_2_fu_420_p1;
wire   [9:0] add_ln69_1_fu_424_p2;
wire   [11:0] zext_ln68_1_fu_416_p1;
wire   [11:0] add_ln70_1_fu_435_p2;
wire   [9:0] lshr_ln70_1_fu_441_p4;
wire   [63:0] v26_fu_475_p2;
wire   [63:0] v26_fu_475_p4;
wire   [63:0] v26_fu_475_p6;
wire   [63:0] v26_fu_475_p8;
wire   [63:0] v26_fu_475_p9;
wire   [63:0] v26_1_fu_514_p2;
wire   [63:0] v26_1_fu_514_p4;
wire   [63:0] v26_1_fu_514_p6;
wire   [63:0] v26_1_fu_514_p8;
wire   [63:0] v26_1_fu_514_p9;
wire   [3:0] or_ln68_1_fu_537_p3;
wire   [9:0] zext_ln69_3_fu_548_p1;
wire   [9:0] add_ln69_2_fu_552_p2;
wire   [11:0] zext_ln69_2_fu_544_p1;
wire   [11:0] add_ln70_2_fu_562_p2;
wire   [9:0] lshr_ln70_2_fu_567_p4;
wire   [3:0] or_ln68_2_fu_585_p3;
wire   [9:0] zext_ln69_6_fu_596_p1;
wire   [9:0] add_ln69_3_fu_600_p2;
wire   [11:0] zext_ln69_5_fu_592_p1;
wire   [11:0] add_ln70_3_fu_610_p2;
wire   [9:0] lshr_ln70_3_fu_615_p4;
wire   [63:0] v26_2_fu_654_p2;
wire   [63:0] v26_2_fu_654_p4;
wire   [63:0] v26_2_fu_654_p6;
wire   [63:0] v26_2_fu_654_p8;
wire   [63:0] v26_2_fu_654_p9;
wire   [63:0] v26_3_fu_693_p2;
wire   [63:0] v26_3_fu_693_p4;
wire   [63:0] v26_3_fu_693_p6;
wire   [63:0] v26_3_fu_693_p8;
wire   [63:0] v26_3_fu_693_p9;
wire    ap_block_pp0_stage31;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_939;
reg    ap_condition_944;
reg    ap_condition_949;
reg    ap_condition_952;
reg    ap_condition_955;
reg    ap_condition_958;
reg    ap_condition_961;
reg    ap_condition_964;
reg    ap_condition_967;
reg    ap_condition_970;
reg    ap_condition_973;
reg    ap_condition_976;
wire   [1:0] v26_fu_475_p1;
wire   [1:0] v26_fu_475_p3;
wire  signed [1:0] v26_fu_475_p5;
wire  signed [1:0] v26_fu_475_p7;
wire  signed [1:0] v26_1_fu_514_p1;
wire   [1:0] v26_1_fu_514_p3;
wire   [1:0] v26_1_fu_514_p5;
wire  signed [1:0] v26_1_fu_514_p7;
wire  signed [1:0] v26_2_fu_654_p1;
wire  signed [1:0] v26_2_fu_654_p3;
wire   [1:0] v26_2_fu_654_p5;
wire   [1:0] v26_2_fu_654_p7;
wire   [1:0] v26_3_fu_693_p1;
wire  signed [1:0] v26_3_fu_693_p3;
wire  signed [1:0] v26_3_fu_693_p5;
wire   [1:0] v26_3_fu_693_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_90 = 64'd0;
#0 v24_fu_94 = 4'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U11(.din0(v26_fu_475_p2),.din1(v26_fu_475_p4),.din2(v26_fu_475_p6),.din3(v26_fu_475_p8),.def(v26_fu_475_p9),.sel(empty_101),.dout(v26_fu_475_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U12(.din0(v26_1_fu_514_p2),.din1(v26_1_fu_514_p4),.din2(v26_1_fu_514_p6),.din3(v26_1_fu_514_p8),.def(v26_1_fu_514_p9),.sel(empty_101),.dout(v26_1_fu_514_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h3 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.CASE3( 2'h1 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U13(.din0(v26_2_fu_654_p2),.din1(v26_2_fu_654_p4),.din2(v26_2_fu_654_p6),.din3(v26_2_fu_654_p8),.def(v26_2_fu_654_p9),.sel(empty_101),.dout(v26_2_fu_654_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h3 ),.din2_WIDTH( 64 ),.CASE3( 2'h0 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U14(.din0(v26_3_fu_693_p2),.din1(v26_3_fu_693_p4),.din2(v26_3_fu_693_p6),.din3(v26_3_fu_693_p8),.def(v26_3_fu_693_p9),.sel(empty_101),.dout(v26_3_fu_693_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage16)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_94 <= 4'd0;
    end else if (((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        v24_fu_94 <= add_ln68_fu_733_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_90 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v28_fu_90 <= grp_fu_4954_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln68_reg_818 <= icmp_ln68_fu_410_p2;
        lshr_ln_reg_792 <= {{ap_sig_allocacmp_v24_1[3:2]}};
        v24_1_reg_782 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_327 <= v0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_331 <= grp_fu_4954_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_load_1_reg_852 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_load_3_reg_922 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_1_reg_857 <= v26_1_fu_514_p11;
        v26_reg_847 <= v26_fu_475_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v26_2_reg_917 <= v26_2_fu_654_p11;
        v26_3_reg_927 <= v26_3_fu_693_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v27_1_reg_957 <= grp_fu_4962_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v27_2_reg_962 <= grp_fu_4962_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v27_3_reg_967 <= grp_fu_4962_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v27_reg_947 <= grp_fu_4962_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_818 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v24_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_1 = v24_fu_94;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_318_p0 = reg_331;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_318_p0 = v28_fu_90;
    end else begin
        grp_fu_318_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_318_p1 = v27_3_reg_967;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_318_p1 = v27_2_reg_962;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_318_p1 = v27_1_reg_957;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_318_p1 = v27_reg_947;
    end else begin
        grp_fu_318_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_323_p0 = v25_3_fu_725_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_323_p0 = v25_2_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_323_p0 = v25_1_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_323_p0 = v25_fu_633_p1;
        end else begin
            grp_fu_323_p0 = 'bx;
        end
    end else begin
        grp_fu_323_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_323_p1 = v26_3_reg_927;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_323_p1 = v26_2_reg_917;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_323_p1 = v26_1_reg_857;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_323_p1 = v26_reg_847;
        end else begin
            grp_fu_323_p1 = 'bx;
        end
    end else begin
        grp_fu_323_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address0_local = zext_ln69_7_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address0_local = zext_ln69_1_fu_430_p1;
        end else begin
            v0_address0_local = 'bx;
        end
    end else begin
        v0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address1_local = zext_ln69_4_fu_557_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address1_local = zext_ln69_fu_359_p1;
        end else begin
            v0_address1_local = 'bx;
        end
    end else begin
        v0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln68_reg_818 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v29_4_out_ap_vld = 1'b1;
    end else begin
        v29_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_952)) begin
            v6_0_address0_local = zext_ln70_4_fu_625_p1;
        end else if ((1'b1 == ap_condition_949)) begin
            v6_0_address0_local = zext_ln70_3_fu_577_p1;
        end else if ((1'b1 == ap_condition_944)) begin
            v6_0_address0_local = zext_ln70_2_fu_451_p1;
        end else if ((1'b1 == ap_condition_939)) begin
            v6_0_address0_local = zext_ln70_1_fu_384_p1;
        end else begin
            v6_0_address0_local = 'bx;
        end
    end else begin
        v6_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd1)) | ((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_410_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd3)))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_949)) begin
            v6_1_address0_local = zext_ln70_4_fu_625_p1;
        end else if ((1'b1 == ap_condition_961)) begin
            v6_1_address0_local = zext_ln70_3_fu_577_p1;
        end else if ((1'b1 == ap_condition_958)) begin
            v6_1_address0_local = zext_ln70_2_fu_451_p1;
        end else if ((1'b1 == ap_condition_955)) begin
            v6_1_address0_local = zext_ln70_1_fu_384_p1;
        end else begin
            v6_1_address0_local = 'bx;
        end
    end else begin
        v6_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd3)) | ((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_410_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd0)))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_961)) begin
            v6_2_address0_local = zext_ln70_4_fu_625_p1;
        end else if ((1'b1 == ap_condition_970)) begin
            v6_2_address0_local = zext_ln70_3_fu_577_p1;
        end else if ((1'b1 == ap_condition_967)) begin
            v6_2_address0_local = zext_ln70_2_fu_451_p1;
        end else if ((1'b1 == ap_condition_964)) begin
            v6_2_address0_local = zext_ln70_1_fu_384_p1;
        end else begin
            v6_2_address0_local = 'bx;
        end
    end else begin
        v6_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd0)) | ((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_410_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd1)))) begin
        v6_2_ce0_local = 1'b1;
    end else begin
        v6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_970)) begin
            v6_3_address0_local = zext_ln70_4_fu_625_p1;
        end else if ((1'b1 == ap_condition_952)) begin
            v6_3_address0_local = zext_ln70_3_fu_577_p1;
        end else if ((1'b1 == ap_condition_976)) begin
            v6_3_address0_local = zext_ln70_2_fu_451_p1;
        end else if ((1'b1 == ap_condition_973)) begin
            v6_3_address0_local = zext_ln70_1_fu_384_p1;
        end else begin
            v6_3_address0_local = 'bx;
        end
    end else begin
        v6_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd1)) | ((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_410_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd2)))) begin
        v6_3_ce0_local = 1'b1;
    end else begin
        v6_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage16)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln68_fu_733_p2 = (v24_1_reg_782 + 4'd4);
assign add_ln69_1_fu_424_p2 = (zext_ln68_2_fu_420_p1 + phi_mul);
assign add_ln69_2_fu_552_p2 = (zext_ln69_3_fu_548_p1 + phi_mul);
assign add_ln69_3_fu_600_p2 = (zext_ln69_6_fu_596_p1 + phi_mul);
assign add_ln69_fu_353_p2 = (zext_ln68_fu_349_p1 + phi_mul);
assign add_ln70_1_fu_435_p2 = (zext_ln68_1_fu_416_p1 + empty);
assign add_ln70_2_fu_562_p2 = (zext_ln69_2_fu_544_p1 + empty);
assign add_ln70_3_fu_610_p2 = (zext_ln69_5_fu_592_p1 + empty);
assign add_ln70_fu_378_p2 = (zext_ln70_fu_374_p1 + trunc_ln1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_939 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd0));
end
always @ (*) begin
    ap_condition_944 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln68_fu_410_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd3));
end
always @ (*) begin
    ap_condition_949 = ((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd2));
end
always @ (*) begin
    ap_condition_952 = ((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd1));
end
always @ (*) begin
    ap_condition_955 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd1));
end
always @ (*) begin
    ap_condition_958 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln68_fu_410_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd0));
end
always @ (*) begin
    ap_condition_961 = ((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd3));
end
always @ (*) begin
    ap_condition_964 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd2));
end
always @ (*) begin
    ap_condition_967 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln68_fu_410_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd1));
end
always @ (*) begin
    ap_condition_970 = ((icmp_ln68_reg_818 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_65_reg_768 == 2'd0));
end
always @ (*) begin
    ap_condition_973 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd3));
end
always @ (*) begin
    ap_condition_976 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln68_fu_410_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_65_read_fu_104_p2 == 2'd2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign grp_fu_4954_p_ce = 1'b1;
assign grp_fu_4954_p_din0 = grp_fu_318_p0;
assign grp_fu_4954_p_din1 = grp_fu_318_p1;
assign grp_fu_4954_p_opcode = 2'd0;
assign grp_fu_4962_p_ce = 1'b1;
assign grp_fu_4962_p_din0 = grp_fu_323_p0;
assign grp_fu_4962_p_din1 = grp_fu_323_p1;
assign icmp_ln68_fu_410_p2 = ((or_ln_fu_402_p3 == 4'd13) ? 1'b1 : 1'b0);
assign lshr_ln70_1_fu_441_p4 = {{add_ln70_1_fu_435_p2[11:2]}};
assign lshr_ln70_2_fu_567_p4 = {{add_ln70_2_fu_562_p2[11:2]}};
assign lshr_ln70_3_fu_615_p4 = {{add_ln70_3_fu_610_p2[11:2]}};
assign lshr_ln_fu_364_p4 = {{ap_sig_allocacmp_v24_1[3:2]}};
assign or_ln68_1_fu_537_p3 = {{lshr_ln_reg_792}, {2'd2}};
assign or_ln68_2_fu_585_p3 = {{lshr_ln_reg_792}, {2'd3}};
assign or_ln_fu_402_p3 = {{tmp_fu_392_p4}, {1'd1}};
assign tmp_65_read_fu_104_p2 = empty_101;
assign tmp_65_reg_768 = empty_101;
assign tmp_fu_392_p4 = {{ap_sig_allocacmp_v24_1[3:1]}};
assign v0_address0 = v0_address0_local;
assign v0_address1 = v0_address1_local;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v25_1_fu_716_p1 = v0_load_1_reg_852;
assign v25_2_fu_720_p1 = reg_327;
assign v25_3_fu_725_p1 = v0_load_3_reg_922;
assign v25_fu_633_p1 = reg_327;
assign v26_1_fu_514_p2 = v6_0_q0;
assign v26_1_fu_514_p4 = v6_1_q0;
assign v26_1_fu_514_p6 = v6_2_q0;
assign v26_1_fu_514_p8 = v6_3_q0;
assign v26_1_fu_514_p9 = 'bx;
assign v26_2_fu_654_p2 = v6_0_q0;
assign v26_2_fu_654_p4 = v6_1_q0;
assign v26_2_fu_654_p6 = v6_2_q0;
assign v26_2_fu_654_p8 = v6_3_q0;
assign v26_2_fu_654_p9 = 'bx;
assign v26_3_fu_693_p2 = v6_0_q0;
assign v26_3_fu_693_p4 = v6_1_q0;
assign v26_3_fu_693_p6 = v6_2_q0;
assign v26_3_fu_693_p8 = v6_3_q0;
assign v26_3_fu_693_p9 = 'bx;
assign v26_fu_475_p2 = v6_0_q0;
assign v26_fu_475_p4 = v6_1_q0;
assign v26_fu_475_p6 = v6_2_q0;
assign v26_fu_475_p8 = v6_3_q0;
assign v26_fu_475_p9 = 'bx;
assign v29_4_out = grp_fu_4954_p_dout0;
assign v6_0_address0 = v6_0_address0_local;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = v6_1_address0_local;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_2_address0 = v6_2_address0_local;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_3_address0 = v6_3_address0_local;
assign v6_3_ce0 = v6_3_ce0_local;
assign zext_ln68_1_fu_416_p1 = or_ln_fu_402_p3;
assign zext_ln68_2_fu_420_p1 = or_ln_fu_402_p3;
assign zext_ln68_fu_349_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_1_fu_430_p1 = add_ln69_1_fu_424_p2;
assign zext_ln69_2_fu_544_p1 = or_ln68_1_fu_537_p3;
assign zext_ln69_3_fu_548_p1 = or_ln68_1_fu_537_p3;
assign zext_ln69_4_fu_557_p1 = add_ln69_2_fu_552_p2;
assign zext_ln69_5_fu_592_p1 = or_ln68_2_fu_585_p3;
assign zext_ln69_6_fu_596_p1 = or_ln68_2_fu_585_p3;
assign zext_ln69_7_fu_605_p1 = add_ln69_3_fu_600_p2;
assign zext_ln69_fu_359_p1 = add_ln69_fu_353_p2;
assign zext_ln70_1_fu_384_p1 = add_ln70_fu_378_p2;
assign zext_ln70_2_fu_451_p1 = lshr_ln70_1_fu_441_p4;
assign zext_ln70_3_fu_577_p1 = lshr_ln70_2_fu_567_p4;
assign zext_ln70_4_fu_625_p1 = lshr_ln70_3_fu_615_p4;
assign zext_ln70_fu_374_p1 = lshr_ln_fu_364_p4;
endmodule 