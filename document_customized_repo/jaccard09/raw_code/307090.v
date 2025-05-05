module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,phi_mul106,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v6_2_address0,v6_2_ce0,v6_2_q0,v6_3_address0,v6_3_ce0,v6_3_q0,v29_2_out,v29_2_out_ap_vld,grp_fu_7258_p_din0,grp_fu_7258_p_din1,grp_fu_7258_p_opcode,grp_fu_7258_p_dout0,grp_fu_7258_p_ce,grp_fu_7270_p_din0,grp_fu_7270_p_din1,grp_fu_7270_p_dout0,grp_fu_7270_p_ce); 
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
output  [7:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [7:0] v0_0_address1;
output   v0_0_ce1;
input  [63:0] v0_0_q1;
output  [7:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [7:0] v0_1_address1;
output   v0_1_ce1;
input  [63:0] v0_1_q1;
output  [7:0] v0_2_address0;
output   v0_2_ce0;
input  [63:0] v0_2_q0;
output  [7:0] v0_2_address1;
output   v0_2_ce1;
input  [63:0] v0_2_q1;
output  [7:0] v0_3_address0;
output   v0_3_ce0;
input  [63:0] v0_3_q0;
output  [7:0] v0_3_address1;
output   v0_3_ce1;
input  [63:0] v0_3_q1;
input  [11:0] phi_mul106;
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
output  [63:0] v29_2_out;
output   v29_2_out_ap_vld;
output  [63:0] grp_fu_7258_p_din0;
output  [63:0] grp_fu_7258_p_din1;
output  [0:0] grp_fu_7258_p_opcode;
input  [63:0] grp_fu_7258_p_dout0;
output   grp_fu_7258_p_ce;
output  [63:0] grp_fu_7270_p_din0;
output  [63:0] grp_fu_7270_p_din1;
input  [63:0] grp_fu_7270_p_dout0;
output   grp_fu_7270_p_ce;
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
reg   [0:0] icmp_ln68_reg_751;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] v24_1_reg_694;
wire   [1:0] trunc_ln69_fu_343_p1;
reg   [1:0] trunc_ln69_reg_699;
reg   [1:0] trunc_ln69_reg_699_pp0_iter1_reg;
wire   [11:0] add_ln70_fu_365_p2;
reg   [11:0] add_ln70_reg_725;
reg   [2:0] tmp_reg_731;
wire   [63:0] v25_fu_403_p11;
reg   [63:0] v25_reg_736;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] trunc_ln2_reg_741;
wire   [3:0] or_ln_fu_445_p3;
reg   [3:0] or_ln_reg_746;
wire   [0:0] icmp_ln68_fu_452_p2;
reg   [0:0] icmp_ln68_reg_751_pp0_iter1_reg;
wire   [11:0] add_ln70_1_fu_462_p2;
reg   [11:0] add_ln70_1_reg_755;
reg   [1:0] trunc_ln70_1_reg_761;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] v26_fu_526_p11;
reg   [63:0] v26_reg_786;
wire   [63:0] v25_1_fu_599_p11;
reg   [63:0] v25_1_reg_831;
wire   [63:0] v26_1_fu_638_p11;
reg   [63:0] v26_1_reg_836;
reg   [63:0] v27_reg_841;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] v27_1_reg_851;
reg   [63:0] v29_2_reg_856;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage7_subdone;
wire   [63:0] zext_ln69_fu_357_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_fu_492_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln69_1_fu_567_p1;
wire   [63:0] zext_ln70_1_fu_575_p1;
reg   [63:0] v28_fu_96;
wire    ap_loop_init;
wire    ap_block_pp0_stage8;
reg   [3:0] v24_fu_100;
wire   [3:0] add_ln68_fu_500_p2;
reg   [3:0] ap_sig_allocacmp_v24_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage15_01001;
reg    v0_0_ce1_local;
reg    v0_0_ce0_local;
reg    v0_1_ce1_local;
reg    v0_1_ce0_local;
reg    v0_2_ce1_local;
reg    v0_2_ce0_local;
reg    v0_3_ce1_local;
reg    v0_3_ce0_local;
reg    v6_0_ce0_local;
reg   [9:0] v6_0_address0_local;
reg    v6_1_ce0_local;
reg   [9:0] v6_1_address0_local;
reg    v6_2_ce0_local;
reg   [9:0] v6_2_address0_local;
reg    v6_3_ce0_local;
reg   [9:0] v6_3_address0_local;
reg   [63:0] grp_fu_307_p0;
reg   [63:0] grp_fu_307_p1;
reg   [63:0] grp_fu_312_p0;
reg   [63:0] grp_fu_312_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [9:0] zext_ln68_1_fu_333_p1;
wire   [9:0] add_ln69_fu_337_p2;
wire   [7:0] lshr_ln1_fu_347_p4;
wire   [11:0] zext_ln68_fu_329_p1;
wire   [11:0] grp_fu_371_p0;
wire   [10:0] grp_fu_371_p1;
wire   [63:0] v25_fu_403_p2;
wire   [63:0] v25_fu_403_p4;
wire   [63:0] v25_fu_403_p6;
wire   [63:0] v25_fu_403_p8;
wire   [63:0] v25_fu_403_p9;
wire   [11:0] mul_ln70_fu_429_p0;
wire   [13:0] mul_ln70_fu_429_p1;
wire   [24:0] mul_ln70_fu_429_p2;
wire   [11:0] zext_ln68_2_fu_458_p1;
wire   [11:0] grp_fu_467_p0;
wire   [10:0] grp_fu_467_p1;
wire   [11:0] mul_ln70_1_fu_476_p0;
wire   [13:0] mul_ln70_1_fu_476_p1;
wire   [24:0] mul_ln70_1_fu_476_p2;
wire   [11:0] grp_fu_371_p2;
wire   [63:0] v26_fu_526_p2;
wire   [63:0] v26_fu_526_p4;
wire   [63:0] v26_fu_526_p6;
wire   [63:0] v26_fu_526_p8;
wire   [63:0] v26_fu_526_p9;
wire   [9:0] zext_ln68_3_fu_549_p1;
wire   [9:0] add_ln69_1_fu_552_p2;
wire   [7:0] lshr_ln69_1_fu_557_p4;
wire   [11:0] grp_fu_467_p2;
wire   [63:0] v25_1_fu_599_p2;
wire   [63:0] v25_1_fu_599_p4;
wire   [63:0] v25_1_fu_599_p6;
wire   [63:0] v25_1_fu_599_p8;
wire   [63:0] v25_1_fu_599_p9;
wire   [63:0] v26_1_fu_638_p2;
wire   [63:0] v26_1_fu_638_p4;
wire   [63:0] v26_1_fu_638_p6;
wire   [63:0] v26_1_fu_638_p8;
wire   [63:0] v26_1_fu_638_p9;
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
wire   [24:0] mul_ln70_1_fu_476_p00;
wire   [24:0] mul_ln70_fu_429_p00;
wire   [1:0] v25_fu_403_p1;
wire   [1:0] v25_fu_403_p3;
wire  signed [1:0] v25_fu_403_p5;
wire  signed [1:0] v25_fu_403_p7;
wire   [1:0] v26_fu_526_p1;
wire   [1:0] v26_fu_526_p3;
wire  signed [1:0] v26_fu_526_p5;
wire  signed [1:0] v26_fu_526_p7;
wire  signed [1:0] v25_1_fu_599_p1;
wire   [1:0] v25_1_fu_599_p3;
wire   [1:0] v25_1_fu_599_p5;
wire  signed [1:0] v25_1_fu_599_p7;
wire   [1:0] v26_1_fu_638_p1;
wire   [1:0] v26_1_fu_638_p3;
wire  signed [1:0] v26_1_fu_638_p5;
wire  signed [1:0] v26_1_fu_638_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_96 = 64'd0;
#0 v24_fu_100 = 4'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_11ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 11 ),.dout_WIDTH( 12 ))
urem_12ns_11ns_12_16_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_371_p0),.din1(grp_fu_371_p1),.ce(1'b1),.dout(grp_fu_371_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U16(.din0(v25_fu_403_p2),.din1(v25_fu_403_p4),.din2(v25_fu_403_p6),.din3(v25_fu_403_p8),.def(v25_fu_403_p9),.sel(trunc_ln69_reg_699),.dout(v25_fu_403_p11));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U17(.din0(mul_ln70_fu_429_p0),.din1(mul_ln70_fu_429_p1),.dout(mul_ln70_fu_429_p2));
backprop_urem_12ns_11ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 11 ),.dout_WIDTH( 12 ))
urem_12ns_11ns_12_16_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_467_p0),.din1(grp_fu_467_p1),.ce(1'b1),.dout(grp_fu_467_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U19(.din0(mul_ln70_1_fu_476_p0),.din1(mul_ln70_1_fu_476_p1),.dout(mul_ln70_1_fu_476_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U20(.din0(v26_fu_526_p2),.din1(v26_fu_526_p4),.din2(v26_fu_526_p6),.din3(v26_fu_526_p8),.def(v26_fu_526_p9),.sel(trunc_ln2_reg_741),.dout(v26_fu_526_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U21(.din0(v25_1_fu_599_p2),.din1(v25_1_fu_599_p4),.din2(v25_1_fu_599_p6),.din3(v25_1_fu_599_p8),.def(v25_1_fu_599_p9),.sel(trunc_ln69_reg_699_pp0_iter1_reg),.dout(v25_1_fu_599_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U22(.din0(v26_1_fu_638_p2),.din1(v26_1_fu_638_p4),.din2(v26_1_fu_638_p6),.din3(v26_1_fu_638_p8),.def(v26_1_fu_638_p9),.sel(trunc_ln70_1_reg_761),.dout(v26_1_fu_638_p11));
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
        v24_fu_100 <= 4'd0;
    end else if (((icmp_ln68_reg_751 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v24_fu_100 <= add_ln68_fu_500_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_96 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v28_fu_96 <= grp_fu_7258_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln70_1_reg_755 <= add_ln70_1_fu_462_p2;
        icmp_ln68_reg_751 <= icmp_ln68_fu_452_p2;
        icmp_ln68_reg_751_pp0_iter1_reg <= icmp_ln68_reg_751;
        or_ln_reg_746[3 : 1] <= or_ln_fu_445_p3[3 : 1];
        trunc_ln2_reg_741 <= {{mul_ln70_fu_429_p2[23:22]}};
        v25_1_reg_831 <= v25_1_fu_599_p11;
        v25_reg_736 <= v25_fu_403_p11;
        v26_1_reg_836 <= v26_1_fu_638_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln70_reg_725 <= add_ln70_fu_365_p2;
        tmp_reg_731 <= {{ap_sig_allocacmp_v24_1[3:1]}};
        trunc_ln69_reg_699 <= trunc_ln69_fu_343_p1;
        trunc_ln69_reg_699_pp0_iter1_reg <= trunc_ln69_reg_699;
        v24_1_reg_694 <= ap_sig_allocacmp_v24_1;
        v26_reg_786 <= v26_fu_526_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln70_1_reg_761 <= {{mul_ln70_1_fu_476_p2[23:22]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v27_1_reg_851 <= grp_fu_7270_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v27_reg_841 <= grp_fu_7270_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v29_2_reg_856 <= grp_fu_7258_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_751 == 1'd0) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln68_reg_751_pp0_iter1_reg == 1'd0))) begin
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
        ap_sig_allocacmp_v24_1 = v24_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_307_p0 = v29_2_reg_856;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_307_p0 = v28_fu_96;
    end else begin
        grp_fu_307_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_307_p1 = v27_1_reg_851;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_307_p1 = v27_reg_841;
    end else begin
        grp_fu_307_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_312_p0 = v25_1_reg_831;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_312_p0 = v25_reg_736;
        end else begin
            grp_fu_312_p0 = 'bx;
        end
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_312_p1 = v26_1_reg_836;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_312_p1 = v26_reg_786;
        end else begin
            grp_fu_312_p1 = 'bx;
        end
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln68_reg_751_pp0_iter1_reg == 1'd0))) begin
        v29_2_out_ap_vld = 1'b1;
    end else begin
        v29_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_0_address0_local = zext_ln70_1_fu_575_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v6_0_address0_local = zext_ln70_fu_492_p1;
    end else begin
        v6_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_1_address0_local = zext_ln70_1_fu_575_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v6_1_address0_local = zext_ln70_fu_492_p1;
    end else begin
        v6_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_2_address0_local = zext_ln70_1_fu_575_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v6_2_address0_local = zext_ln70_fu_492_p1;
    end else begin
        v6_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v6_2_ce0_local = 1'b1;
    end else begin
        v6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_3_address0_local = zext_ln70_1_fu_575_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v6_3_address0_local = zext_ln70_fu_492_p1;
    end else begin
        v6_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v6_3_ce0_local = 1'b1;
    end else begin
        v6_3_ce0_local = 1'b0;
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
assign add_ln68_fu_500_p2 = (v24_1_reg_694 + 4'd2);
assign add_ln69_1_fu_552_p2 = (zext_ln68_3_fu_549_p1 + phi_mul);
assign add_ln69_fu_337_p2 = (zext_ln68_1_fu_333_p1 + phi_mul);
assign add_ln70_1_fu_462_p2 = (zext_ln68_2_fu_458_p1 + phi_mul106);
assign add_ln70_fu_365_p2 = (zext_ln68_fu_329_p1 + phi_mul106);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign grp_fu_371_p0 = (zext_ln68_fu_329_p1 + phi_mul106);
assign grp_fu_371_p1 = 12'd530;
assign grp_fu_467_p0 = (zext_ln68_2_fu_458_p1 + phi_mul106);
assign grp_fu_467_p1 = 12'd530;
assign grp_fu_7258_p_ce = 1'b1;
assign grp_fu_7258_p_din0 = grp_fu_307_p0;
assign grp_fu_7258_p_din1 = grp_fu_307_p1;
assign grp_fu_7258_p_opcode = 2'd0;
assign grp_fu_7270_p_ce = 1'b1;
assign grp_fu_7270_p_din0 = grp_fu_312_p0;
assign grp_fu_7270_p_din1 = grp_fu_312_p1;
assign icmp_ln68_fu_452_p2 = ((or_ln_fu_445_p3 < 4'd13) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_347_p4 = {{add_ln69_fu_337_p2[9:2]}};
assign lshr_ln69_1_fu_557_p4 = {{add_ln69_1_fu_552_p2[9:2]}};
assign mul_ln70_1_fu_476_p0 = mul_ln70_1_fu_476_p00;
assign mul_ln70_1_fu_476_p00 = add_ln70_1_reg_755;
assign mul_ln70_1_fu_476_p1 = 25'd7914;
assign mul_ln70_fu_429_p0 = mul_ln70_fu_429_p00;
assign mul_ln70_fu_429_p00 = add_ln70_reg_725;
assign mul_ln70_fu_429_p1 = 25'd7914;
assign or_ln_fu_445_p3 = {{tmp_reg_731}, {1'd1}};
assign trunc_ln69_fu_343_p1 = add_ln69_fu_337_p2[1:0];
assign v0_0_address0 = zext_ln69_1_fu_567_p1;
assign v0_0_address1 = zext_ln69_fu_357_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = zext_ln69_1_fu_567_p1;
assign v0_1_address1 = zext_ln69_fu_357_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = zext_ln69_1_fu_567_p1;
assign v0_2_address1 = zext_ln69_fu_357_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = zext_ln69_1_fu_567_p1;
assign v0_3_address1 = zext_ln69_fu_357_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v25_1_fu_599_p2 = v0_0_q0;
assign v25_1_fu_599_p4 = v0_1_q0;
assign v25_1_fu_599_p6 = v0_2_q0;
assign v25_1_fu_599_p8 = v0_3_q0;
assign v25_1_fu_599_p9 = 'bx;
assign v25_fu_403_p2 = v0_0_q1;
assign v25_fu_403_p4 = v0_1_q1;
assign v25_fu_403_p6 = v0_2_q1;
assign v25_fu_403_p8 = v0_3_q1;
assign v25_fu_403_p9 = 'bx;
assign v26_1_fu_638_p2 = v6_0_q0;
assign v26_1_fu_638_p4 = v6_1_q0;
assign v26_1_fu_638_p6 = v6_2_q0;
assign v26_1_fu_638_p8 = v6_3_q0;
assign v26_1_fu_638_p9 = 'bx;
assign v26_fu_526_p2 = v6_0_q0;
assign v26_fu_526_p4 = v6_1_q0;
assign v26_fu_526_p6 = v6_2_q0;
assign v26_fu_526_p8 = v6_3_q0;
assign v26_fu_526_p9 = 'bx;
assign v29_2_out = grp_fu_7258_p_dout0;
assign v6_0_address0 = v6_0_address0_local;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = v6_1_address0_local;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_2_address0 = v6_2_address0_local;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_3_address0 = v6_3_address0_local;
assign v6_3_ce0 = v6_3_ce0_local;
assign zext_ln68_1_fu_333_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln68_2_fu_458_p1 = or_ln_fu_445_p3;
assign zext_ln68_3_fu_549_p1 = or_ln_reg_746;
assign zext_ln68_fu_329_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_1_fu_567_p1 = lshr_ln69_1_fu_557_p4;
assign zext_ln69_fu_357_p1 = lshr_ln1_fu_347_p4;
assign zext_ln70_1_fu_575_p1 = grp_fu_467_p2;
assign zext_ln70_fu_492_p1 = grp_fu_371_p2;
always @ (posedge ap_clk) begin
    or_ln_reg_746[0] <= 1'b1;
end
endmodule 