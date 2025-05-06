
module backprop_backprop_Pipeline_label_7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v42,v1_0_address0,v1_0_ce0,v1_0_q0,v1_0_address1,v1_0_ce1,v1_0_q1,v1_1_address0,v1_1_ce0,v1_1_q0,v1_1_address1,v1_1_ce1,v1_1_q1,v1_2_address0,v1_2_ce0,v1_2_q0,v1_2_address1,v1_2_ce1,v1_2_q1,v1_3_address0,v1_3_ce0,v1_3_q0,v1_3_address1,v1_3_ce1,v1_3_q1,v1_4_address0,v1_4_ce0,v1_4_q0,v1_4_address1,v1_4_ce1,v1_4_q1,v1_5_address0,v1_5_ce0,v1_5_q0,v1_5_address1,v1_5_ce1,v1_5_q1,v1_6_address0,v1_6_ce0,v1_6_q0,v1_6_address1,v1_6_ce1,v1_6_q1,v1_7_address0,v1_7_ce0,v1_7_q0,v1_7_address1,v1_7_ce1,v1_7_q1,v20_address0,v20_ce0,v20_q0,v20_address1,v20_ce1,v20_q1,empty,v47_out,v47_out_ap_vld,grp_fu_2827_p_din0,grp_fu_2827_p_din1,grp_fu_2827_p_opcode,grp_fu_2827_p_dout0,grp_fu_2827_p_ce,grp_fu_2845_p_din0,grp_fu_2845_p_din1,grp_fu_2845_p_dout0,grp_fu_2845_p_ce);  
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
input  [5:0] v42;
output  [8:0] v1_0_address0;
output   v1_0_ce0;
input  [63:0] v1_0_q0;
output  [8:0] v1_0_address1;
output   v1_0_ce1;
input  [63:0] v1_0_q1;
output  [8:0] v1_1_address0;
output   v1_1_ce0;
input  [63:0] v1_1_q0;
output  [8:0] v1_1_address1;
output   v1_1_ce1;
input  [63:0] v1_1_q1;
output  [8:0] v1_2_address0;
output   v1_2_ce0;
input  [63:0] v1_2_q0;
output  [8:0] v1_2_address1;
output   v1_2_ce1;
input  [63:0] v1_2_q1;
output  [8:0] v1_3_address0;
output   v1_3_ce0;
input  [63:0] v1_3_q0;
output  [8:0] v1_3_address1;
output   v1_3_ce1;
input  [63:0] v1_3_q1;
output  [8:0] v1_4_address0;
output   v1_4_ce0;
input  [63:0] v1_4_q0;
output  [8:0] v1_4_address1;
output   v1_4_ce1;
input  [63:0] v1_4_q1;
output  [8:0] v1_5_address0;
output   v1_5_ce0;
input  [63:0] v1_5_q0;
output  [8:0] v1_5_address1;
output   v1_5_ce1;
input  [63:0] v1_5_q1;
output  [8:0] v1_6_address0;
output   v1_6_ce0;
input  [63:0] v1_6_q0;
output  [8:0] v1_6_address1;
output   v1_6_ce1;
input  [63:0] v1_6_q1;
output  [8:0] v1_7_address0;
output   v1_7_ce0;
input  [63:0] v1_7_q0;
output  [8:0] v1_7_address1;
output   v1_7_ce1;
input  [63:0] v1_7_q1;
output  [5:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [5:0] v20_address1;
output   v20_ce1;
input  [63:0] v20_q1;
input  [2:0] empty;
output  [63:0] v47_out;
output   v47_out_ap_vld;
output  [63:0] grp_fu_2827_p_din0;
output  [63:0] grp_fu_2827_p_din1;
output  [0:0] grp_fu_2827_p_opcode;
input  [63:0] grp_fu_2827_p_dout0;
output   grp_fu_2827_p_ce;
output  [63:0] grp_fu_2845_p_din0;
output  [63:0] grp_fu_2845_p_din1;
input  [63:0] grp_fu_2845_p_dout0;
output   grp_fu_2845_p_ce;
reg ap_idle;
reg v47_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_5_reg_656;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_5_fu_377_p3;
reg   [2:0] trunc_ln5_reg_660;
wire   [63:0] v44_fu_518_p19;
reg   [63:0] v44_reg_756;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] v45_reg_761;
wire   [63:0] v44_1_fu_589_p19;
reg   [63:0] v44_1_reg_766;
reg   [63:0] v45_4_reg_771;
reg   [63:0] v46_reg_776;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] v46_1_reg_786;
reg   [63:0] v48_4_reg_791;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln97_fu_408_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln96_fu_385_p1;
wire   [63:0] zext_ln97_2_fu_463_p1;
wire   [63:0] zext_ln97_1_fu_448_p1;
reg   [63:0] v47_fu_104;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [6:0] v43_fu_108;
wire   [6:0] add_ln96_fu_475_p2;
reg   [6:0] ap_sig_allocacmp_v43_3;
wire    ap_block_pp0_stage8_01001;
reg    v1_0_ce1_local;
reg    v1_0_ce0_local;
reg    v1_1_ce1_local;
reg    v1_1_ce0_local;
reg    v1_2_ce1_local;
reg    v1_2_ce0_local;
reg    v1_3_ce1_local;
reg    v1_3_ce0_local;
reg    v1_4_ce1_local;
reg    v1_4_ce0_local;
reg    v1_5_ce1_local;
reg    v1_5_ce0_local;
reg    v1_6_ce1_local;
reg    v1_6_ce0_local;
reg    v1_7_ce1_local;
reg    v1_7_ce0_local;
reg    v20_ce1_local;
reg    v20_ce0_local;
reg   [63:0] grp_fu_356_p0;
reg   [63:0] grp_fu_356_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_360_p0;
reg   [63:0] grp_fu_360_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [1:0] tmp_fu_390_p4;
wire   [8:0] add_ln97_cast_fu_400_p3;
wire   [4:0] tmp_3_fu_430_p4;
wire   [5:0] or_ln1_fu_440_p3;
wire   [8:0] add_ln97_1_cast_fu_453_p4;
wire   [63:0] v44_fu_518_p2;
wire   [63:0] v44_fu_518_p4;
wire   [63:0] v44_fu_518_p6;
wire   [63:0] v44_fu_518_p8;
wire   [63:0] v44_fu_518_p10;
wire   [63:0] v44_fu_518_p12;
wire   [63:0] v44_fu_518_p14;
wire   [63:0] v44_fu_518_p16;
wire   [63:0] v44_fu_518_p17;
wire   [63:0] v44_1_fu_589_p2;
wire   [63:0] v44_1_fu_589_p4;
wire   [63:0] v44_1_fu_589_p6;
wire   [63:0] v44_1_fu_589_p8;
wire   [63:0] v44_1_fu_589_p10;
wire   [63:0] v44_1_fu_589_p12;
wire   [63:0] v44_1_fu_589_p14;
wire   [63:0] v44_1_fu_589_p16;
wire   [63:0] v44_1_fu_589_p17;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v44_fu_518_p1;
wire   [2:0] v44_fu_518_p3;
wire   [2:0] v44_fu_518_p5;
wire   [2:0] v44_fu_518_p7;
wire  signed [2:0] v44_fu_518_p9;
wire  signed [2:0] v44_fu_518_p11;
wire  signed [2:0] v44_fu_518_p13;
wire  signed [2:0] v44_fu_518_p15;
wire   [2:0] v44_1_fu_589_p1;
wire   [2:0] v44_1_fu_589_p3;
wire   [2:0] v44_1_fu_589_p5;
wire   [2:0] v44_1_fu_589_p7;
wire  signed [2:0] v44_1_fu_589_p9;
wire  signed [2:0] v44_1_fu_589_p11;
wire  signed [2:0] v44_1_fu_589_p13;
wire  signed [2:0] v44_1_fu_589_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v47_fu_104 = 64'd0;
#0 v43_fu_108 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U60(.din0(v44_fu_518_p2),.din1(v44_fu_518_p4),.din2(v44_fu_518_p6),.din3(v44_fu_518_p8),.din4(v44_fu_518_p10),.din5(v44_fu_518_p12),.din6(v44_fu_518_p14),.din7(v44_fu_518_p16),.def(v44_fu_518_p17),.sel(trunc_ln5_reg_660),.dout(v44_fu_518_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U61(.din0(v44_1_fu_589_p2),.din1(v44_1_fu_589_p4),.din2(v44_1_fu_589_p6),.din3(v44_1_fu_589_p8),.din4(v44_1_fu_589_p10),.din5(v44_1_fu_589_p12),.din6(v44_1_fu_589_p14),.din7(v44_1_fu_589_p16),.def(v44_1_fu_589_p17),.sel(trunc_ln5_reg_660),.dout(v44_1_fu_589_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_5_fu_377_p3 == 1'd0))) begin
            v43_fu_108 <= add_ln96_fu_475_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v43_fu_108 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_fu_104 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v47_fu_104 <= grp_fu_2827_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_5_reg_656 <= ap_sig_allocacmp_v43_3[32'd6];
        trunc_ln5_reg_660 <= {{v42[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v44_1_reg_766 <= v44_1_fu_589_p19;
        v44_reg_756 <= v44_fu_518_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v45_4_reg_771 <= v20_q0;
        v45_reg_761 <= v20_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v46_1_reg_786 <= grp_fu_2845_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v46_reg_776 <= grp_fu_2845_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v48_4_reg_791 <= grp_fu_2827_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_5_reg_656 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v43_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_v43_3 = v43_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_356_p0 = v48_4_reg_791;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_356_p0 = v47_fu_104;
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_356_p1 = v46_1_reg_786;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_356_p1 = v46_reg_776;
    end else begin
        grp_fu_356_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_360_p0 = v44_1_reg_766;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_360_p0 = v44_reg_756;
        end else begin
            grp_fu_360_p0 = 'bx;
        end
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_360_p1 = v45_4_reg_771;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_360_p1 = v45_reg_761;
        end else begin
            grp_fu_360_p1 = 'bx;
        end
    end else begin
        grp_fu_360_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_0_ce0_local = 1'b1;
    end else begin
        v1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_0_ce1_local = 1'b1;
    end else begin
        v1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_1_ce0_local = 1'b1;
    end else begin
        v1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_1_ce1_local = 1'b1;
    end else begin
        v1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_2_ce0_local = 1'b1;
    end else begin
        v1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_2_ce1_local = 1'b1;
    end else begin
        v1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_3_ce0_local = 1'b1;
    end else begin
        v1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_3_ce1_local = 1'b1;
    end else begin
        v1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_4_ce0_local = 1'b1;
    end else begin
        v1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_4_ce1_local = 1'b1;
    end else begin
        v1_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_5_ce0_local = 1'b1;
    end else begin
        v1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_5_ce1_local = 1'b1;
    end else begin
        v1_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_6_ce0_local = 1'b1;
    end else begin
        v1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_6_ce1_local = 1'b1;
    end else begin
        v1_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_7_ce0_local = 1'b1;
    end else begin
        v1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_7_ce1_local = 1'b1;
    end else begin
        v1_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce1_local = 1'b1;
    end else begin
        v20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_5_reg_656 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v47_out_ap_vld = 1'b1;
    end else begin
        v47_out_ap_vld = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
assign add_ln96_fu_475_p2 = (ap_sig_allocacmp_v43_3 + 7'd2);
assign add_ln97_1_cast_fu_453_p4 = {{{empty}, {tmp_3_fu_430_p4}}, {1'd1}};
assign add_ln97_cast_fu_400_p3 = {{tmp_fu_390_p4}, {ap_sig_allocacmp_v43_3}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign grp_fu_2827_p_ce = 1'b1;
assign grp_fu_2827_p_din0 = grp_fu_356_p0;
assign grp_fu_2827_p_din1 = grp_fu_356_p1;
assign grp_fu_2827_p_opcode = 2'd0;
assign grp_fu_2845_p_ce = 1'b1;
assign grp_fu_2845_p_din0 = grp_fu_360_p0;
assign grp_fu_2845_p_din1 = grp_fu_360_p1;
assign or_ln1_fu_440_p3 = {{tmp_3_fu_430_p4}, {1'd1}};
assign tmp_3_fu_430_p4 = {{ap_sig_allocacmp_v43_3[5:1]}};
assign tmp_5_fu_377_p3 = ap_sig_allocacmp_v43_3[32'd6];
assign tmp_fu_390_p4 = {{v42[2:1]}};
assign v1_0_address0 = zext_ln97_2_fu_463_p1;
assign v1_0_address1 = zext_ln97_fu_408_p1;
assign v1_0_ce0 = v1_0_ce0_local;
assign v1_0_ce1 = v1_0_ce1_local;
assign v1_1_address0 = zext_ln97_2_fu_463_p1;
assign v1_1_address1 = zext_ln97_fu_408_p1;
assign v1_1_ce0 = v1_1_ce0_local;
assign v1_1_ce1 = v1_1_ce1_local;
assign v1_2_address0 = zext_ln97_2_fu_463_p1;
assign v1_2_address1 = zext_ln97_fu_408_p1;
assign v1_2_ce0 = v1_2_ce0_local;
assign v1_2_ce1 = v1_2_ce1_local;
assign v1_3_address0 = zext_ln97_2_fu_463_p1;
assign v1_3_address1 = zext_ln97_fu_408_p1;
assign v1_3_ce0 = v1_3_ce0_local;
assign v1_3_ce1 = v1_3_ce1_local;
assign v1_4_address0 = zext_ln97_2_fu_463_p1;
assign v1_4_address1 = zext_ln97_fu_408_p1;
assign v1_4_ce0 = v1_4_ce0_local;
assign v1_4_ce1 = v1_4_ce1_local;
assign v1_5_address0 = zext_ln97_2_fu_463_p1;
assign v1_5_address1 = zext_ln97_fu_408_p1;
assign v1_5_ce0 = v1_5_ce0_local;
assign v1_5_ce1 = v1_5_ce1_local;
assign v1_6_address0 = zext_ln97_2_fu_463_p1;
assign v1_6_address1 = zext_ln97_fu_408_p1;
assign v1_6_ce0 = v1_6_ce0_local;
assign v1_6_ce1 = v1_6_ce1_local;
assign v1_7_address0 = zext_ln97_2_fu_463_p1;
assign v1_7_address1 = zext_ln97_fu_408_p1;
assign v1_7_ce0 = v1_7_ce0_local;
assign v1_7_ce1 = v1_7_ce1_local;
assign v20_address0 = zext_ln97_1_fu_448_p1;
assign v20_address1 = zext_ln96_fu_385_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_ce1 = v20_ce1_local;
assign v44_1_fu_589_p10 = v1_4_q0;
assign v44_1_fu_589_p12 = v1_5_q0;
assign v44_1_fu_589_p14 = v1_6_q0;
assign v44_1_fu_589_p16 = v1_7_q0;
assign v44_1_fu_589_p17 = 'bx;
assign v44_1_fu_589_p2 = v1_0_q0;
assign v44_1_fu_589_p4 = v1_1_q0;
assign v44_1_fu_589_p6 = v1_2_q0;
assign v44_1_fu_589_p8 = v1_3_q0;
assign v44_fu_518_p10 = v1_4_q1;
assign v44_fu_518_p12 = v1_5_q1;
assign v44_fu_518_p14 = v1_6_q1;
assign v44_fu_518_p16 = v1_7_q1;
assign v44_fu_518_p17 = 'bx;
assign v44_fu_518_p2 = v1_0_q1;
assign v44_fu_518_p4 = v1_1_q1;
assign v44_fu_518_p6 = v1_2_q1;
assign v44_fu_518_p8 = v1_3_q1;
assign v47_out = v47_fu_104;
assign zext_ln96_fu_385_p1 = ap_sig_allocacmp_v43_3;
assign zext_ln97_1_fu_448_p1 = or_ln1_fu_440_p3;
assign zext_ln97_2_fu_463_p1 = add_ln97_1_cast_fu_453_p4;
assign zext_ln97_fu_408_p1 = add_ln97_cast_fu_400_p3;
endmodule 
