
module ss_sort_ss_sort_Pipeline_local_1_local_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_7_address0,bucket_7_ce0,bucket_7_we0,bucket_7_d0,bucket_7_q0,bucket_6_address0,bucket_6_ce0,bucket_6_we0,bucket_6_d0,bucket_6_q0,bucket_5_address0,bucket_5_ce0,bucket_5_we0,bucket_5_d0,bucket_5_q0,bucket_4_address0,bucket_4_ce0,bucket_4_we0,bucket_4_d0,bucket_4_q0,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] bucket_7_address0;
output   bucket_7_ce0;
output   bucket_7_we0;
output  [31:0] bucket_7_d0;
input  [31:0] bucket_7_q0;
output  [7:0] bucket_6_address0;
output   bucket_6_ce0;
output   bucket_6_we0;
output  [31:0] bucket_6_d0;
input  [31:0] bucket_6_q0;
output  [7:0] bucket_5_address0;
output   bucket_5_ce0;
output   bucket_5_we0;
output  [31:0] bucket_5_d0;
input  [31:0] bucket_5_q0;
output  [7:0] bucket_4_address0;
output   bucket_4_ce0;
output   bucket_4_we0;
output  [31:0] bucket_4_d0;
input  [31:0] bucket_4_q0;
output  [7:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
input  [31:0] bucket_3_q0;
output  [7:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
input  [31:0] bucket_2_q0;
output  [7:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [7:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln13_fu_282_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln13_reg_529;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] add_ln13_fu_288_p2;
reg   [10:0] add_ln13_reg_533;
wire   [0:0] icmp_ln14_fu_297_p2;
reg   [0:0] icmp_ln14_reg_538;
wire   [4:0] select_ln12_fu_303_p3;
reg   [4:0] select_ln12_reg_543;
wire   [2:0] trunc_ln14_1_fu_315_p1;
reg   [2:0] trunc_ln14_1_reg_548;
reg   [0:0] tmp_reg_554;
reg   [0:0] tmp_8_reg_559;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [7:0] bucket_0_addr_16_reg_604;
reg   [7:0] bucket_1_addr_16_reg_609;
reg   [7:0] bucket_2_addr_16_reg_614;
reg   [7:0] bucket_3_addr_16_reg_619;
reg   [7:0] bucket_4_addr_16_reg_624;
reg   [7:0] bucket_5_addr_16_reg_629;
reg   [7:0] bucket_6_addr_16_reg_634;
reg   [7:0] bucket_7_addr_16_reg_639;
wire   [31:0] tmp_1_fu_418_p19;
reg   [31:0] tmp_1_reg_644;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_2_fu_457_p19;
reg   [31:0] tmp_2_reg_649;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln16_1_fu_387_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_fu_368_p1;
reg   [4:0] i_fu_84;
wire   [4:0] add_ln14_fu_399_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_load;
wire    ap_block_pp0_stage0;
reg   [7:0] radixID_fu_88;
wire   [7:0] select_ln13_fu_350_p3;
reg   [10:0] indvar_flatten_fu_92;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg    bucket_0_ce0_local;
reg   [7:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
wire   [31:0] add_ln16_1_fu_496_p2;
reg    bucket_1_ce0_local;
reg   [7:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
reg    bucket_2_ce0_local;
reg   [7:0] bucket_2_address0_local;
reg    bucket_2_we0_local;
reg    bucket_3_ce0_local;
reg   [7:0] bucket_3_address0_local;
reg    bucket_3_we0_local;
reg    bucket_4_ce0_local;
reg   [7:0] bucket_4_address0_local;
reg    bucket_4_we0_local;
reg    bucket_5_ce0_local;
reg   [7:0] bucket_5_address0_local;
reg    bucket_5_we0_local;
reg    bucket_6_ce0_local;
reg   [7:0] bucket_6_address0_local;
reg    bucket_6_we0_local;
reg    bucket_7_ce0_local;
reg   [7:0] bucket_7_address0_local;
reg    bucket_7_we0_local;
wire   [3:0] trunc_ln14_fu_311_p1;
wire   [3:0] add_ln16_fu_327_p2;
wire   [7:0] add_ln13_1_fu_344_p2;
wire   [6:0] trunc_ln16_fu_357_p1;
wire   [7:0] add_ln_fu_361_p3;
wire   [7:0] lshr_ln16_1_fu_380_p3;
wire   [31:0] tmp_1_fu_418_p17;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_2_fu_457_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_1_fu_418_p1;
wire   [2:0] tmp_1_fu_418_p3;
wire   [2:0] tmp_1_fu_418_p5;
wire  signed [2:0] tmp_1_fu_418_p7;
wire  signed [2:0] tmp_1_fu_418_p9;
wire  signed [2:0] tmp_1_fu_418_p11;
wire  signed [2:0] tmp_1_fu_418_p13;
wire   [2:0] tmp_1_fu_418_p15;
wire   [2:0] tmp_2_fu_457_p1;
wire   [2:0] tmp_2_fu_457_p3;
wire   [2:0] tmp_2_fu_457_p5;
wire   [2:0] tmp_2_fu_457_p7;
wire  signed [2:0] tmp_2_fu_457_p9;
wire  signed [2:0] tmp_2_fu_457_p11;
wire  signed [2:0] tmp_2_fu_457_p13;
wire  signed [2:0] tmp_2_fu_457_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_84 = 5'd0;
#0 radixID_fu_88 = 8'd0;
#0 indvar_flatten_fu_92 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U26(.din0(bucket_0_q0),.din1(bucket_1_q0),.din2(bucket_2_q0),.din3(bucket_3_q0),.din4(bucket_4_q0),.din5(bucket_5_q0),.din6(bucket_6_q0),.din7(bucket_7_q0),.def(tmp_1_fu_418_p17),.sel(trunc_ln14_1_reg_548),.dout(tmp_1_fu_418_p19));
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U27(.din0(bucket_0_q0),.din1(bucket_1_q0),.din2(bucket_2_q0),.din3(bucket_3_q0),.din4(bucket_4_q0),.din5(bucket_5_q0),.din6(bucket_6_q0),.din7(bucket_7_q0),.def(tmp_2_fu_457_p17),.sel(trunc_ln14_1_reg_548),.dout(tmp_2_fu_457_p19));
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_84 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln13_reg_529 == 1'd0))) begin
        i_fu_84 <= add_ln14_fu_399_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_92 <= 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln13_reg_529 == 1'd0))) begin
        indvar_flatten_fu_92 <= add_ln13_reg_533;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        radixID_fu_88 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln13_reg_529 == 1'd0))) begin
        radixID_fu_88 <= select_ln13_fu_350_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_reg_533 <= add_ln13_fu_288_p2;
        icmp_ln13_reg_529 <= icmp_ln13_fu_282_p2;
        icmp_ln14_reg_538 <= icmp_ln14_fu_297_p2;
        select_ln12_reg_543 <= select_ln12_fu_303_p3;
        tmp_8_reg_559 <= add_ln16_fu_327_p2[32'd3];
        tmp_reg_554 <= select_ln12_fu_303_p3[32'd3];
        trunc_ln14_1_reg_548 <= trunc_ln14_1_fu_315_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_addr_16_reg_604 <= zext_ln16_fu_368_p1;
        bucket_1_addr_16_reg_609 <= zext_ln16_fu_368_p1;
        bucket_2_addr_16_reg_614 <= zext_ln16_fu_368_p1;
        bucket_3_addr_16_reg_619 <= zext_ln16_fu_368_p1;
        bucket_4_addr_16_reg_624 <= zext_ln16_fu_368_p1;
        bucket_5_addr_16_reg_629 <= zext_ln16_fu_368_p1;
        bucket_6_addr_16_reg_634 <= zext_ln16_fu_368_p1;
        bucket_7_addr_16_reg_639 <= zext_ln16_fu_368_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_1_reg_644 <= tmp_1_fu_418_p19;
        tmp_2_reg_649 <= tmp_2_fu_457_p19;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_282_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 5'd1;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_16_reg_604;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd0) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_0_address0_local = zext_ln16_fu_368_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd1) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_0_address0_local = zext_ln16_1_fu_387_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd0) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd1) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_548 == 3'd0))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = bucket_1_addr_16_reg_609;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd1) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_1_address0_local = zext_ln16_fu_368_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd2) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_1_address0_local = zext_ln16_1_fu_387_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd2) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd1) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_548 == 3'd1))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = bucket_2_addr_16_reg_614;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd2) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_2_address0_local = zext_ln16_fu_368_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd3) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_2_address0_local = zext_ln16_1_fu_387_p1;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd3) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd2) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_548 == 3'd2))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = bucket_3_addr_16_reg_619;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd3) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_3_address0_local = zext_ln16_fu_368_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd4) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_3_address0_local = zext_ln16_1_fu_387_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd4) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd3) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_548 == 3'd3))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_4_address0_local = bucket_4_addr_16_reg_624;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd4) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_4_address0_local = zext_ln16_fu_368_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd5) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_4_address0_local = zext_ln16_1_fu_387_p1;
    end else begin
        bucket_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd5) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd4) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_4_ce0_local = 1'b1;
    end else begin
        bucket_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_548 == 3'd4))) begin
        bucket_4_we0_local = 1'b1;
    end else begin
        bucket_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_5_address0_local = bucket_5_addr_16_reg_629;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd5) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_5_address0_local = zext_ln16_fu_368_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd6) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_5_address0_local = zext_ln16_1_fu_387_p1;
    end else begin
        bucket_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd6) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd5) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_5_ce0_local = 1'b1;
    end else begin
        bucket_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_548 == 3'd5))) begin
        bucket_5_we0_local = 1'b1;
    end else begin
        bucket_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_6_address0_local = bucket_6_addr_16_reg_634;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd6) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_6_address0_local = zext_ln16_fu_368_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd7) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_6_address0_local = zext_ln16_1_fu_387_p1;
    end else begin
        bucket_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd7) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd6) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_6_ce0_local = 1'b1;
    end else begin
        bucket_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_548 == 3'd6))) begin
        bucket_6_we0_local = 1'b1;
    end else begin
        bucket_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_7_address0_local = bucket_7_addr_16_reg_639;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd7) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_7_address0_local = zext_ln16_fu_368_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd0) & (icmp_ln13_reg_529 == 1'd0))) begin
        bucket_7_address0_local = zext_ln16_1_fu_387_p1;
    end else begin
        bucket_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd0) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln14_1_reg_548 == 3'd7) & (icmp_ln13_reg_529 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_7_ce0_local = 1'b1;
    end else begin
        bucket_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_548 == 3'd7))) begin
        bucket_7_we0_local = 1'b1;
    end else begin
        bucket_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_1_fu_344_p2 = (radixID_fu_88 + 8'd1);
assign add_ln13_fu_288_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln14_fu_399_p2 = (select_ln12_reg_543 + 5'd1);
assign add_ln16_1_fu_496_p2 = (tmp_2_reg_649 + tmp_1_reg_644);
assign add_ln16_fu_327_p2 = ($signed(trunc_ln14_fu_311_p1) + $signed(4'd15));
assign add_ln_fu_361_p3 = {{trunc_ln16_fu_357_p1}, {tmp_reg_554}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = add_ln16_1_fu_496_p2;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = add_ln16_1_fu_496_p2;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_d0 = add_ln16_1_fu_496_p2;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_d0 = add_ln16_1_fu_496_p2;
assign bucket_3_we0 = bucket_3_we0_local;
assign bucket_4_address0 = bucket_4_address0_local;
assign bucket_4_ce0 = bucket_4_ce0_local;
assign bucket_4_d0 = add_ln16_1_fu_496_p2;
assign bucket_4_we0 = bucket_4_we0_local;
assign bucket_5_address0 = bucket_5_address0_local;
assign bucket_5_ce0 = bucket_5_ce0_local;
assign bucket_5_d0 = add_ln16_1_fu_496_p2;
assign bucket_5_we0 = bucket_5_we0_local;
assign bucket_6_address0 = bucket_6_address0_local;
assign bucket_6_ce0 = bucket_6_ce0_local;
assign bucket_6_d0 = add_ln16_1_fu_496_p2;
assign bucket_6_we0 = bucket_6_we0_local;
assign bucket_7_address0 = bucket_7_address0_local;
assign bucket_7_ce0 = bucket_7_ce0_local;
assign bucket_7_d0 = add_ln16_1_fu_496_p2;
assign bucket_7_we0 = bucket_7_we0_local;
assign icmp_ln13_fu_282_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1920) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_297_p2 = ((ap_sig_allocacmp_i_load == 5'd16) ? 1'b1 : 1'b0);
assign lshr_ln16_1_fu_380_p3 = {{trunc_ln16_fu_357_p1}, {tmp_8_reg_559}};
assign select_ln12_fu_303_p3 = ((icmp_ln14_fu_297_p2[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_i_load);
assign select_ln13_fu_350_p3 = ((icmp_ln14_reg_538[0:0] == 1'b1) ? add_ln13_1_fu_344_p2 : radixID_fu_88);
assign tmp_1_fu_418_p17 = 'bx;
assign tmp_2_fu_457_p17 = 'bx;
assign trunc_ln14_1_fu_315_p1 = select_ln12_fu_303_p3[2:0];
assign trunc_ln14_fu_311_p1 = select_ln12_fu_303_p3[3:0];
assign trunc_ln16_fu_357_p1 = select_ln13_fu_350_p3[6:0];
assign zext_ln16_1_fu_387_p1 = lshr_ln16_1_fu_380_p3;
assign zext_ln16_fu_368_p1 = add_ln_fu_361_p3;
endmodule 
