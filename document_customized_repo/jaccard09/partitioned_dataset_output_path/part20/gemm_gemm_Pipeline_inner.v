
module gemm_gemm_Pipeline_inner (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,i,m1_0_address0,m1_0_ce0,m1_0_q0,m1_2_address0,m1_2_ce0,m1_2_q0,lshr_ln,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,m2_2_address0,m2_2_ce0,m2_2_q0,m2_2_address1,m2_2_ce1,m2_2_q1,m2_3_address0,m2_3_ce0,m2_3_q0,m2_3_address1,m2_3_ce1,m2_3_q1,empty,m1_1_address0,m1_1_ce0,m1_1_q0,m1_3_address0,m1_3_ce0,m1_3_q0,sum_out,sum_out_ap_vld);  
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
input  [5:0] i;
output  [9:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [9:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
input  [3:0] lshr_ln;
output  [9:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [9:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [9:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [9:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [9:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [9:0] m2_2_address1;
output   m2_2_ce1;
input  [63:0] m2_2_q1;
output  [9:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [9:0] m2_3_address1;
output   m2_3_ce1;
input  [63:0] m2_3_q1;
input  [1:0] empty;
output  [9:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [9:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [63:0] sum_out;
output   sum_out_ap_vld;
reg ap_idle;
reg sum_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_2_reg_535;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_2_fu_298_p3;
wire   [0:0] icmp_ln14_fu_336_p2;
reg   [0:0] icmp_ln14_reg_549;
wire   [63:0] select_ln14_fu_401_p3;
reg   [63:0] select_ln14_reg_605;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_424_p11;
reg   [63:0] tmp_1_reg_610;
wire   [63:0] select_ln14_1_fu_447_p3;
reg   [63:0] select_ln14_1_reg_615;
wire   [63:0] tmp_3_fu_470_p11;
reg   [63:0] tmp_3_reg_620;
wire   [63:0] bitcast_ln14_fu_493_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] bitcast_ln14_5_fu_497_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_281_p2;
reg   [63:0] mult_reg_635;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mult_1_reg_645;
wire   [63:0] grp_fu_277_p2;
reg   [63:0] sum_1_reg_650;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln14_fu_328_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_1_fu_354_p1;
wire   [63:0] zext_ln14_2_fu_382_p1;
reg   [63:0] sum_fu_92;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [6:0] k_fu_96;
wire   [6:0] add_ln12_fu_390_p2;
reg   [6:0] ap_sig_allocacmp_k_1;
wire    ap_block_pp0_stage8_01001;
reg    m1_0_ce0_local;
reg    m1_2_ce0_local;
reg    m2_0_ce1_local;
reg    m2_0_ce0_local;
reg    m2_1_ce1_local;
reg    m2_1_ce0_local;
reg    m2_2_ce1_local;
reg    m2_2_ce0_local;
reg    m2_3_ce1_local;
reg    m2_3_ce0_local;
reg    m1_1_ce0_local;
reg    m1_3_ce0_local;
reg   [63:0] grp_fu_277_p0;
reg   [63:0] grp_fu_277_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_281_p0;
reg   [63:0] grp_fu_281_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire   [3:0] lshr_ln14_1_fu_310_p4;
wire   [9:0] add_ln_fu_320_p3;
wire   [1:0] trunc_ln12_fu_306_p1;
wire   [5:0] trunc_ln14_fu_342_p1;
wire   [9:0] add_ln14_1_fu_346_p3;
wire   [4:0] tmp_4_fu_362_p4;
wire   [9:0] or_ln_fu_372_p4;
wire   [63:0] tmp_1_fu_424_p2;
wire   [63:0] tmp_1_fu_424_p4;
wire   [63:0] tmp_1_fu_424_p6;
wire   [63:0] tmp_1_fu_424_p8;
wire   [63:0] tmp_1_fu_424_p9;
wire   [63:0] tmp_3_fu_470_p2;
wire   [63:0] tmp_3_fu_470_p4;
wire   [63:0] tmp_3_fu_470_p6;
wire   [63:0] tmp_3_fu_470_p8;
wire   [63:0] tmp_3_fu_470_p9;
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
wire   [1:0] tmp_1_fu_424_p1;
wire   [1:0] tmp_1_fu_424_p3;
wire  signed [1:0] tmp_1_fu_424_p5;
wire  signed [1:0] tmp_1_fu_424_p7;
wire   [1:0] tmp_3_fu_470_p1;
wire   [1:0] tmp_3_fu_470_p3;
wire  signed [1:0] tmp_3_fu_470_p5;
wire  signed [1:0] tmp_3_fu_470_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 sum_fu_92 = 64'd0;
#0 k_fu_96 = 7'd0;
#0 ap_done_reg = 1'b0;
end
gemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_277_p0),.din1(grp_fu_277_p1),.ce(1'b1),.dout(grp_fu_277_p2));
gemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_281_p0),.din1(grp_fu_281_p1),.ce(1'b1),.dout(grp_fu_281_p2));
(* dissolve_hierarchy = "yes" *) gemm_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_1_fu_424_p2),.din1(tmp_1_fu_424_p4),.din2(tmp_1_fu_424_p6),.din3(tmp_1_fu_424_p8),.def(tmp_1_fu_424_p9),.sel(empty),.dout(tmp_1_fu_424_p11));
(* dissolve_hierarchy = "yes" *) gemm_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_3_fu_470_p2),.din1(tmp_3_fu_470_p4),.din2(tmp_3_fu_470_p6),.din3(tmp_3_fu_470_p8),.def(tmp_3_fu_470_p9),.sel(empty),.dout(tmp_3_fu_470_p11));
gemm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_2_fu_298_p3 == 1'd0))) begin
            k_fu_96 <= add_ln12_fu_390_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_96 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_fu_92 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        sum_fu_92 <= grp_fu_277_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln14_reg_549 <= icmp_ln14_fu_336_p2;
        tmp_2_reg_535 <= ap_sig_allocacmp_k_1[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mult_1_reg_645 <= grp_fu_281_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mult_reg_635 <= grp_fu_281_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln14_1_reg_615 <= select_ln14_1_fu_447_p3;
        select_ln14_reg_605 <= select_ln14_fu_401_p3;
        tmp_1_reg_610 <= tmp_1_fu_424_p11;
        tmp_3_reg_620 <= tmp_3_fu_470_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_1_reg_650 <= grp_fu_277_p2;
    end
end
always @ (*) begin
    if (((tmp_2_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_k_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_277_p0 = sum_1_reg_650;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_277_p0 = sum_fu_92;
    end else begin
        grp_fu_277_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_277_p1 = mult_1_reg_645;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_277_p1 = mult_reg_635;
    end else begin
        grp_fu_277_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_281_p0 = bitcast_ln14_5_fu_497_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_281_p0 = bitcast_ln14_fu_493_p1;
        end else begin
            grp_fu_281_p0 = 'bx;
        end
    end else begin
        grp_fu_281_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_281_p1 = tmp_3_reg_620;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_281_p1 = tmp_1_reg_610;
        end else begin
            grp_fu_281_p1 = 'bx;
        end
    end else begin
        grp_fu_281_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m1_0_ce0_local = 1'b1;
    end else begin
        m1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m1_1_ce0_local = 1'b1;
    end else begin
        m1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m1_2_ce0_local = 1'b1;
    end else begin
        m1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m1_3_ce0_local = 1'b1;
    end else begin
        m1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_2_ce0_local = 1'b1;
    end else begin
        m2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_2_ce1_local = 1'b1;
    end else begin
        m2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_3_ce1_local = 1'b1;
    end else begin
        m2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_2_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        sum_out_ap_vld = 1'b1;
    end else begin
        sum_out_ap_vld = 1'b0;
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
assign add_ln12_fu_390_p2 = (ap_sig_allocacmp_k_1 + 7'd2);
assign add_ln14_1_fu_346_p3 = {{trunc_ln14_fu_342_p1}, {lshr_ln}};
assign add_ln_fu_320_p3 = {{i}, {lshr_ln14_1_fu_310_p4}};
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
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_5_fu_497_p1 = select_ln14_1_reg_615;
assign bitcast_ln14_fu_493_p1 = select_ln14_reg_605;
assign icmp_ln14_fu_336_p2 = ((trunc_ln12_fu_306_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln14_1_fu_310_p4 = {{ap_sig_allocacmp_k_1[5:2]}};
assign m1_0_address0 = zext_ln14_fu_328_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln14_fu_328_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_2_address0 = zext_ln14_fu_328_p1;
assign m1_2_ce0 = m1_2_ce0_local;
assign m1_3_address0 = zext_ln14_fu_328_p1;
assign m1_3_ce0 = m1_3_ce0_local;
assign m2_0_address0 = zext_ln14_2_fu_382_p1;
assign m2_0_address1 = zext_ln14_1_fu_354_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = zext_ln14_2_fu_382_p1;
assign m2_1_address1 = zext_ln14_1_fu_354_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign m2_2_address0 = zext_ln14_2_fu_382_p1;
assign m2_2_address1 = zext_ln14_1_fu_354_p1;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_2_ce1 = m2_2_ce1_local;
assign m2_3_address0 = zext_ln14_2_fu_382_p1;
assign m2_3_address1 = zext_ln14_1_fu_354_p1;
assign m2_3_ce0 = m2_3_ce0_local;
assign m2_3_ce1 = m2_3_ce1_local;
assign or_ln_fu_372_p4 = {{{tmp_4_fu_362_p4}, {1'd1}}, {lshr_ln}};
assign select_ln14_1_fu_447_p3 = ((icmp_ln14_reg_549[0:0] == 1'b1) ? m1_3_q0 : m1_1_q0);
assign select_ln14_fu_401_p3 = ((icmp_ln14_reg_549[0:0] == 1'b1) ? m1_2_q0 : m1_0_q0);
assign sum_out = sum_fu_92;
assign tmp_1_fu_424_p2 = m2_0_q1;
assign tmp_1_fu_424_p4 = m2_1_q1;
assign tmp_1_fu_424_p6 = m2_2_q1;
assign tmp_1_fu_424_p8 = m2_3_q1;
assign tmp_1_fu_424_p9 = 'bx;
assign tmp_2_fu_298_p3 = ap_sig_allocacmp_k_1[32'd6];
assign tmp_3_fu_470_p2 = m2_0_q0;
assign tmp_3_fu_470_p4 = m2_1_q0;
assign tmp_3_fu_470_p6 = m2_2_q0;
assign tmp_3_fu_470_p8 = m2_3_q0;
assign tmp_3_fu_470_p9 = 'bx;
assign tmp_4_fu_362_p4 = {{ap_sig_allocacmp_k_1[5:1]}};
assign trunc_ln12_fu_306_p1 = ap_sig_allocacmp_k_1[1:0];
assign trunc_ln14_fu_342_p1 = ap_sig_allocacmp_k_1[5:0];
assign zext_ln14_1_fu_354_p1 = add_ln14_1_fu_346_p3;
assign zext_ln14_2_fu_382_p1 = or_ln_fu_372_p4;
assign zext_ln14_fu_328_p1 = add_ln_fu_320_p3;
endmodule 
