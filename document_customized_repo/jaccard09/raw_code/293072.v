module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,phi_mul150,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v6_2_address0,v6_2_ce0,v6_2_q0,v6_3_address0,v6_3_ce0,v6_3_q0,v29_2_out,v29_2_out_ap_vld,grp_fu_4959_p_din0,grp_fu_4959_p_din1,grp_fu_4959_p_opcode,grp_fu_4959_p_dout0,grp_fu_4959_p_ce,grp_fu_4971_p_din0,grp_fu_4971_p_din1,grp_fu_4971_p_dout0,grp_fu_4971_p_ce); 
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
output  [9:0] v0_address0;
output   v0_ce0;
input  [63:0] v0_q0;
output  [9:0] v0_address1;
output   v0_ce1;
input  [63:0] v0_q1;
input  [11:0] phi_mul150;
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
output  [63:0] grp_fu_4959_p_din0;
output  [63:0] grp_fu_4959_p_din1;
output  [0:0] grp_fu_4959_p_opcode;
input  [63:0] grp_fu_4959_p_dout0;
output   grp_fu_4959_p_ce;
output  [63:0] grp_fu_4971_p_din0;
output  [63:0] grp_fu_4971_p_din1;
input  [63:0] grp_fu_4971_p_dout0;
output   grp_fu_4971_p_ce;
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
reg   [0:0] icmp_ln68_reg_543;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] v24_1_reg_507;
wire   [11:0] add_ln70_fu_261_p2;
reg   [11:0] add_ln70_reg_517;
reg   [2:0] tmp_1_reg_523;
reg   [63:0] v0_load_reg_528;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] trunc_ln1_reg_533;
wire   [3:0] or_ln_fu_302_p3;
reg   [3:0] or_ln_reg_538;
wire   [0:0] icmp_ln68_fu_309_p2;
reg   [0:0] icmp_ln68_reg_543_pp0_iter1_reg;
wire   [11:0] add_ln70_1_fu_319_p2;
reg   [11:0] add_ln70_1_reg_547;
reg   [1:0] trunc_ln70_1_reg_553;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] v26_fu_383_p11;
reg   [63:0] v26_reg_578;
wire   [63:0] v25_fu_427_p1;
reg   [63:0] v0_load_1_reg_613;
wire   [63:0] v26_1_fu_447_p11;
reg   [63:0] v26_1_reg_618;
wire   [63:0] v25_1_fu_470_p1;
reg   [63:0] v27_reg_628;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] v27_1_reg_638;
reg   [63:0] v29_2_reg_643;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage7_subdone;
wire   [63:0] zext_ln69_fu_256_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_fu_349_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln69_1_fu_414_p1;
wire   [63:0] zext_ln70_1_fu_419_p1;
reg   [63:0] v28_fu_84;
wire    ap_loop_init;
wire    ap_block_pp0_stage8;
reg   [3:0] v24_fu_88;
wire   [3:0] add_ln68_fu_357_p2;
reg   [3:0] ap_sig_allocacmp_v24_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage15_01001;
reg    v0_ce1_local;
reg    v0_ce0_local;
reg    v6_0_ce0_local;
reg   [9:0] v6_0_address0_local;
reg    v6_1_ce0_local;
reg   [9:0] v6_1_address0_local;
reg    v6_2_ce0_local;
reg   [9:0] v6_2_address0_local;
reg    v6_3_ce0_local;
reg   [9:0] v6_3_address0_local;
reg   [63:0] grp_fu_220_p0;
reg   [63:0] grp_fu_220_p1;
reg   [63:0] grp_fu_225_p0;
reg   [63:0] grp_fu_225_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [9:0] zext_ln68_1_fu_246_p1;
wire   [9:0] add_ln69_fu_250_p2;
wire   [11:0] zext_ln68_fu_242_p1;
wire   [11:0] grp_fu_267_p0;
wire   [10:0] grp_fu_267_p1;
wire   [11:0] mul_ln70_fu_286_p0;
wire   [13:0] mul_ln70_fu_286_p1;
wire   [24:0] mul_ln70_fu_286_p2;
wire   [11:0] zext_ln68_2_fu_315_p1;
wire   [11:0] grp_fu_324_p0;
wire   [10:0] grp_fu_324_p1;
wire   [11:0] mul_ln70_1_fu_333_p0;
wire   [13:0] mul_ln70_1_fu_333_p1;
wire   [24:0] mul_ln70_1_fu_333_p2;
wire   [11:0] grp_fu_267_p2;
wire   [63:0] v26_fu_383_p2;
wire   [63:0] v26_fu_383_p4;
wire   [63:0] v26_fu_383_p6;
wire   [63:0] v26_fu_383_p8;
wire   [63:0] v26_fu_383_p9;
wire   [9:0] zext_ln68_3_fu_406_p1;
wire   [9:0] add_ln69_1_fu_409_p2;
wire   [11:0] grp_fu_324_p2;
wire   [63:0] v26_1_fu_447_p2;
wire   [63:0] v26_1_fu_447_p4;
wire   [63:0] v26_1_fu_447_p6;
wire   [63:0] v26_1_fu_447_p8;
wire   [63:0] v26_1_fu_447_p9;
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
wire   [24:0] mul_ln70_1_fu_333_p00;
wire   [24:0] mul_ln70_fu_286_p00;
wire   [1:0] v26_fu_383_p1;
wire   [1:0] v26_fu_383_p3;
wire  signed [1:0] v26_fu_383_p5;
wire  signed [1:0] v26_fu_383_p7;
wire   [1:0] v26_1_fu_447_p1;
wire   [1:0] v26_1_fu_447_p3;
wire  signed [1:0] v26_1_fu_447_p5;
wire  signed [1:0] v26_1_fu_447_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_84 = 64'd0;
#0 v24_fu_88 = 4'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_11ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 11 ),.dout_WIDTH( 12 ))
urem_12ns_11ns_12_16_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_267_p0),.din1(grp_fu_267_p1),.ce(1'b1),.dout(grp_fu_267_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U19(.din0(mul_ln70_fu_286_p0),.din1(mul_ln70_fu_286_p1),.dout(mul_ln70_fu_286_p2));
backprop_urem_12ns_11ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 11 ),.dout_WIDTH( 12 ))
urem_12ns_11ns_12_16_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_324_p0),.din1(grp_fu_324_p1),.ce(1'b1),.dout(grp_fu_324_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U21(.din0(mul_ln70_1_fu_333_p0),.din1(mul_ln70_1_fu_333_p1),.dout(mul_ln70_1_fu_333_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U22(.din0(v26_fu_383_p2),.din1(v26_fu_383_p4),.din2(v26_fu_383_p6),.din3(v26_fu_383_p8),.def(v26_fu_383_p9),.sel(trunc_ln1_reg_533),.dout(v26_fu_383_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U23(.din0(v26_1_fu_447_p2),.din1(v26_1_fu_447_p4),.din2(v26_1_fu_447_p6),.din3(v26_1_fu_447_p8),.def(v26_1_fu_447_p9),.sel(trunc_ln70_1_reg_553),.dout(v26_1_fu_447_p11));
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
        v24_fu_88 <= 4'd0;
    end else if (((icmp_ln68_reg_543 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v24_fu_88 <= add_ln68_fu_357_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_84 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v28_fu_84 <= grp_fu_4959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln70_1_reg_547 <= add_ln70_1_fu_319_p2;
        icmp_ln68_reg_543 <= icmp_ln68_fu_309_p2;
        icmp_ln68_reg_543_pp0_iter1_reg <= icmp_ln68_reg_543;
        or_ln_reg_538[3 : 1] <= or_ln_fu_302_p3[3 : 1];
        trunc_ln1_reg_533 <= {{mul_ln70_fu_286_p2[23:22]}};
        v26_1_reg_618 <= v26_1_fu_447_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln70_reg_517 <= add_ln70_fu_261_p2;
        tmp_1_reg_523 <= {{ap_sig_allocacmp_v24_1[3:1]}};
        v24_1_reg_507 <= ap_sig_allocacmp_v24_1;
        v26_reg_578 <= v26_fu_383_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln70_1_reg_553 <= {{mul_ln70_1_fu_333_p2[23:22]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_load_1_reg_613 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_load_reg_528 <= v0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v27_1_reg_638 <= grp_fu_4971_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v27_reg_628 <= grp_fu_4971_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v29_2_reg_643 <= grp_fu_4959_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_543 == 1'd0) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln68_reg_543_pp0_iter1_reg == 1'd0))) begin
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
        ap_sig_allocacmp_v24_1 = v24_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_220_p0 = v29_2_reg_643;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_220_p0 = v28_fu_84;
    end else begin
        grp_fu_220_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_220_p1 = v27_1_reg_638;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_220_p1 = v27_reg_628;
    end else begin
        grp_fu_220_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_225_p0 = v25_1_fu_470_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_225_p0 = v25_fu_427_p1;
        end else begin
            grp_fu_225_p0 = 'bx;
        end
    end else begin
        grp_fu_225_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_225_p1 = v26_1_reg_618;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_225_p1 = v26_reg_578;
        end else begin
            grp_fu_225_p1 = 'bx;
        end
    end else begin
        grp_fu_225_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln68_reg_543_pp0_iter1_reg == 1'd0))) begin
        v29_2_out_ap_vld = 1'b1;
    end else begin
        v29_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_0_address0_local = zext_ln70_1_fu_419_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v6_0_address0_local = zext_ln70_fu_349_p1;
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
        v6_1_address0_local = zext_ln70_1_fu_419_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v6_1_address0_local = zext_ln70_fu_349_p1;
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
        v6_2_address0_local = zext_ln70_1_fu_419_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v6_2_address0_local = zext_ln70_fu_349_p1;
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
        v6_3_address0_local = zext_ln70_1_fu_419_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v6_3_address0_local = zext_ln70_fu_349_p1;
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
assign add_ln68_fu_357_p2 = (v24_1_reg_507 + 4'd2);
assign add_ln69_1_fu_409_p2 = (zext_ln68_3_fu_406_p1 + phi_mul);
assign add_ln69_fu_250_p2 = (zext_ln68_1_fu_246_p1 + phi_mul);
assign add_ln70_1_fu_319_p2 = (zext_ln68_2_fu_315_p1 + phi_mul150);
assign add_ln70_fu_261_p2 = (zext_ln68_fu_242_p1 + phi_mul150);
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
assign grp_fu_267_p0 = (zext_ln68_fu_242_p1 + phi_mul150);
assign grp_fu_267_p1 = 12'd530;
assign grp_fu_324_p0 = (zext_ln68_2_fu_315_p1 + phi_mul150);
assign grp_fu_324_p1 = 12'd530;
assign grp_fu_4959_p_ce = 1'b1;
assign grp_fu_4959_p_din0 = grp_fu_220_p0;
assign grp_fu_4959_p_din1 = grp_fu_220_p1;
assign grp_fu_4959_p_opcode = 2'd0;
assign grp_fu_4971_p_ce = 1'b1;
assign grp_fu_4971_p_din0 = grp_fu_225_p0;
assign grp_fu_4971_p_din1 = grp_fu_225_p1;
assign icmp_ln68_fu_309_p2 = ((or_ln_fu_302_p3 < 4'd13) ? 1'b1 : 1'b0);
assign mul_ln70_1_fu_333_p0 = mul_ln70_1_fu_333_p00;
assign mul_ln70_1_fu_333_p00 = add_ln70_1_reg_547;
assign mul_ln70_1_fu_333_p1 = 25'd7914;
assign mul_ln70_fu_286_p0 = mul_ln70_fu_286_p00;
assign mul_ln70_fu_286_p00 = add_ln70_reg_517;
assign mul_ln70_fu_286_p1 = 25'd7914;
assign or_ln_fu_302_p3 = {{tmp_1_reg_523}, {1'd1}};
assign v0_address0 = zext_ln69_1_fu_414_p1;
assign v0_address1 = zext_ln69_fu_256_p1;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v25_1_fu_470_p1 = v0_load_1_reg_613;
assign v25_fu_427_p1 = v0_load_reg_528;
assign v26_1_fu_447_p2 = v6_0_q0;
assign v26_1_fu_447_p4 = v6_1_q0;
assign v26_1_fu_447_p6 = v6_2_q0;
assign v26_1_fu_447_p8 = v6_3_q0;
assign v26_1_fu_447_p9 = 'bx;
assign v26_fu_383_p2 = v6_0_q0;
assign v26_fu_383_p4 = v6_1_q0;
assign v26_fu_383_p6 = v6_2_q0;
assign v26_fu_383_p8 = v6_3_q0;
assign v26_fu_383_p9 = 'bx;
assign v29_2_out = grp_fu_4959_p_dout0;
assign v6_0_address0 = v6_0_address0_local;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = v6_1_address0_local;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_2_address0 = v6_2_address0_local;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_3_address0 = v6_3_address0_local;
assign v6_3_ce0 = v6_3_ce0_local;
assign zext_ln68_1_fu_246_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln68_2_fu_315_p1 = or_ln_fu_302_p3;
assign zext_ln68_3_fu_406_p1 = or_ln_reg_538;
assign zext_ln68_fu_242_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_1_fu_414_p1 = add_ln69_1_fu_409_p2;
assign zext_ln69_fu_256_p1 = add_ln69_fu_250_p2;
assign zext_ln70_1_fu_419_p1 = grp_fu_324_p2;
assign zext_ln70_fu_349_p1 = grp_fu_267_p2;
always @ (posedge ap_clk) begin
    or_ln_reg_538[0] <= 1'b1;
end
endmodule 