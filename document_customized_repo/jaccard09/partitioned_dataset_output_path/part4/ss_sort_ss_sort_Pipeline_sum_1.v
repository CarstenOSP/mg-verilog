
module ss_sort_ss_sort_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,sum_7_address0,sum_7_ce0,sum_7_we0,sum_7_d0,sum_7_q0,sum_6_address0,sum_6_ce0,sum_6_we0,sum_6_d0,sum_6_q0,sum_5_address0,sum_5_ce0,sum_5_we0,sum_5_d0,sum_5_q0,sum_4_address0,sum_4_ce0,sum_4_we0,sum_4_d0,sum_4_q0,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_3_q0,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_2_q0,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_1_q0,bucket_7_address0,bucket_7_ce0,bucket_7_q0);  
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
input  [31:0] sum_0_q0;
output  [3:0] sum_7_address0;
output   sum_7_ce0;
output   sum_7_we0;
output  [31:0] sum_7_d0;
input  [31:0] sum_7_q0;
output  [3:0] sum_6_address0;
output   sum_6_ce0;
output   sum_6_we0;
output  [31:0] sum_6_d0;
input  [31:0] sum_6_q0;
output  [3:0] sum_5_address0;
output   sum_5_ce0;
output   sum_5_we0;
output  [31:0] sum_5_d0;
input  [31:0] sum_5_q0;
output  [3:0] sum_4_address0;
output   sum_4_ce0;
output   sum_4_we0;
output  [31:0] sum_4_d0;
input  [31:0] sum_4_q0;
output  [3:0] sum_3_address0;
output   sum_3_ce0;
output   sum_3_we0;
output  [31:0] sum_3_d0;
input  [31:0] sum_3_q0;
output  [3:0] sum_2_address0;
output   sum_2_ce0;
output   sum_2_we0;
output  [31:0] sum_2_d0;
input  [31:0] sum_2_q0;
output  [3:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
input  [31:0] sum_1_q0;
output  [7:0] bucket_7_address0;
output   bucket_7_ce0;
input  [31:0] bucket_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln25_fu_279_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state3;
reg   [7:0] radixID_1_reg_433;
wire   [2:0] trunc_ln25_fu_346_p1;
reg   [2:0] trunc_ln25_reg_488;
wire    ap_CS_fsm_state2;
wire   [31:0] add_ln27_1_fu_389_p2;
reg   [31:0] add_ln27_1_reg_492;
wire   [63:0] zext_ln27_1_fu_334_p1;
wire   [63:0] zext_ln27_fu_313_p1;
wire   [63:0] zext_ln23_fu_404_p1;
reg   [7:0] radixID_fu_86;
wire   [7:0] add_ln25_fu_416_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_radixID_1;
reg    sum_0_ce0_local;
reg   [3:0] sum_0_address0_local;
reg    sum_0_we0_local;
reg    sum_1_ce0_local;
reg   [3:0] sum_1_address0_local;
reg    sum_1_we0_local;
reg    sum_2_ce0_local;
reg   [3:0] sum_2_address0_local;
reg    sum_2_we0_local;
reg    sum_3_ce0_local;
reg   [3:0] sum_3_address0_local;
reg    sum_3_we0_local;
reg    sum_4_ce0_local;
reg   [3:0] sum_4_address0_local;
reg    sum_4_we0_local;
reg    sum_5_ce0_local;
reg   [3:0] sum_5_address0_local;
reg    sum_5_we0_local;
reg    sum_6_ce0_local;
reg   [3:0] sum_6_address0_local;
reg    sum_6_we0_local;
reg    sum_7_ce0_local;
reg   [3:0] sum_7_address0_local;
reg    sum_7_we0_local;
reg    bucket_7_ce0_local;
wire   [6:0] trunc_ln25_1_fu_285_p1;
wire   [10:0] shl_ln_fu_289_p3;
wire   [10:0] add_ln26_fu_297_p2;
wire   [7:0] lshr_ln6_fu_303_p4;
wire   [6:0] add_ln27_fu_318_p2;
wire   [3:0] lshr_ln27_1_fu_324_p4;
wire   [31:0] tmp_4_fu_349_p17;
wire   [2:0] tmp_4_fu_349_p18;
wire   [31:0] tmp_4_fu_349_p19;
wire   [3:0] lshr_ln5_fu_395_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_4_fu_349_p1;
wire   [2:0] tmp_4_fu_349_p3;
wire   [2:0] tmp_4_fu_349_p5;
wire  signed [2:0] tmp_4_fu_349_p7;
wire  signed [2:0] tmp_4_fu_349_p9;
wire  signed [2:0] tmp_4_fu_349_p11;
wire  signed [2:0] tmp_4_fu_349_p13;
wire   [2:0] tmp_4_fu_349_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 radixID_fu_86 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_17_3_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_x_U60(.din0(sum_0_q0),.din1(sum_1_q0),.din2(sum_2_q0),.din3(sum_3_q0),.din4(sum_4_q0),.din5(sum_5_q0),.din6(sum_6_q0),.din7(sum_7_q0),.def(tmp_4_fu_349_p17),.sel(tmp_4_fu_349_p18),.dout(tmp_4_fu_349_p19));
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        radixID_fu_86 <= 8'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        radixID_fu_86 <= add_ln25_fu_416_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln27_1_reg_492 <= add_ln27_1_fu_389_p2;
        trunc_ln25_reg_488 <= trunc_ln25_fu_346_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        radixID_1_reg_433 <= ap_sig_allocacmp_radixID_1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln25_fu_279_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_radixID_1 = 8'd1;
    end else begin
        ap_sig_allocacmp_radixID_1 = radixID_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_7_ce0_local = 1'b1;
    end else begin
        bucket_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd0))) begin
        sum_0_address0_local = zext_ln23_fu_404_p1;
    end else if (((icmp_ln25_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_0_address0_local = zext_ln27_1_fu_334_p1;
    end else begin
        sum_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd0)) | ((icmp_ln25_fu_279_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd0))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd1))) begin
        sum_1_address0_local = zext_ln23_fu_404_p1;
    end else if (((icmp_ln25_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_1_address0_local = zext_ln27_1_fu_334_p1;
    end else begin
        sum_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd1)) | ((icmp_ln25_fu_279_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd1))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd2))) begin
        sum_2_address0_local = zext_ln23_fu_404_p1;
    end else if (((icmp_ln25_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_2_address0_local = zext_ln27_1_fu_334_p1;
    end else begin
        sum_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd2)) | ((icmp_ln25_fu_279_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_2_ce0_local = 1'b1;
    end else begin
        sum_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd2))) begin
        sum_2_we0_local = 1'b1;
    end else begin
        sum_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd3))) begin
        sum_3_address0_local = zext_ln23_fu_404_p1;
    end else if (((icmp_ln25_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_3_address0_local = zext_ln27_1_fu_334_p1;
    end else begin
        sum_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd3)) | ((icmp_ln25_fu_279_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_3_ce0_local = 1'b1;
    end else begin
        sum_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd3))) begin
        sum_3_we0_local = 1'b1;
    end else begin
        sum_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd4))) begin
        sum_4_address0_local = zext_ln23_fu_404_p1;
    end else if (((icmp_ln25_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_4_address0_local = zext_ln27_1_fu_334_p1;
    end else begin
        sum_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd4)) | ((icmp_ln25_fu_279_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_4_ce0_local = 1'b1;
    end else begin
        sum_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd4))) begin
        sum_4_we0_local = 1'b1;
    end else begin
        sum_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd5))) begin
        sum_5_address0_local = zext_ln23_fu_404_p1;
    end else if (((icmp_ln25_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_5_address0_local = zext_ln27_1_fu_334_p1;
    end else begin
        sum_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd5)) | ((icmp_ln25_fu_279_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_5_ce0_local = 1'b1;
    end else begin
        sum_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd5))) begin
        sum_5_we0_local = 1'b1;
    end else begin
        sum_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd6))) begin
        sum_6_address0_local = zext_ln23_fu_404_p1;
    end else if (((icmp_ln25_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_6_address0_local = zext_ln27_1_fu_334_p1;
    end else begin
        sum_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd6)) | ((icmp_ln25_fu_279_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_6_ce0_local = 1'b1;
    end else begin
        sum_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd6))) begin
        sum_6_we0_local = 1'b1;
    end else begin
        sum_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd7))) begin
        sum_7_address0_local = zext_ln23_fu_404_p1;
    end else if (((icmp_ln25_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_7_address0_local = zext_ln27_1_fu_334_p1;
    end else begin
        sum_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd7)) | ((icmp_ln25_fu_279_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_7_ce0_local = 1'b1;
    end else begin
        sum_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln25_reg_488 == 3'd7))) begin
        sum_7_we0_local = 1'b1;
    end else begin
        sum_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln25_fu_279_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_fu_416_p2 = (radixID_1_reg_433 + 8'd1);
assign add_ln26_fu_297_p2 = ($signed(shl_ln_fu_289_p3) + $signed(11'd2047));
assign add_ln27_1_fu_389_p2 = (bucket_7_q0 + tmp_4_fu_349_p19);
assign add_ln27_fu_318_p2 = ($signed(trunc_ln25_1_fu_285_p1) + $signed(7'd127));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bucket_7_address0 = zext_ln27_fu_313_p1;
assign bucket_7_ce0 = bucket_7_ce0_local;
assign icmp_ln25_fu_279_p2 = ((ap_sig_allocacmp_radixID_1 == 8'd128) ? 1'b1 : 1'b0);
assign lshr_ln27_1_fu_324_p4 = {{add_ln27_fu_318_p2[6:3]}};
assign lshr_ln5_fu_395_p4 = {{radixID_1_reg_433[6:3]}};
assign lshr_ln6_fu_303_p4 = {{add_ln26_fu_297_p2[10:3]}};
assign shl_ln_fu_289_p3 = {{trunc_ln25_1_fu_285_p1}, {4'd0}};
assign sum_0_address0 = sum_0_address0_local;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_0_d0 = add_ln27_1_reg_492;
assign sum_0_we0 = sum_0_we0_local;
assign sum_1_address0 = sum_1_address0_local;
assign sum_1_ce0 = sum_1_ce0_local;
assign sum_1_d0 = add_ln27_1_reg_492;
assign sum_1_we0 = sum_1_we0_local;
assign sum_2_address0 = sum_2_address0_local;
assign sum_2_ce0 = sum_2_ce0_local;
assign sum_2_d0 = add_ln27_1_reg_492;
assign sum_2_we0 = sum_2_we0_local;
assign sum_3_address0 = sum_3_address0_local;
assign sum_3_ce0 = sum_3_ce0_local;
assign sum_3_d0 = add_ln27_1_reg_492;
assign sum_3_we0 = sum_3_we0_local;
assign sum_4_address0 = sum_4_address0_local;
assign sum_4_ce0 = sum_4_ce0_local;
assign sum_4_d0 = add_ln27_1_reg_492;
assign sum_4_we0 = sum_4_we0_local;
assign sum_5_address0 = sum_5_address0_local;
assign sum_5_ce0 = sum_5_ce0_local;
assign sum_5_d0 = add_ln27_1_reg_492;
assign sum_5_we0 = sum_5_we0_local;
assign sum_6_address0 = sum_6_address0_local;
assign sum_6_ce0 = sum_6_ce0_local;
assign sum_6_d0 = add_ln27_1_reg_492;
assign sum_6_we0 = sum_6_we0_local;
assign sum_7_address0 = sum_7_address0_local;
assign sum_7_ce0 = sum_7_ce0_local;
assign sum_7_d0 = add_ln27_1_reg_492;
assign sum_7_we0 = sum_7_we0_local;
assign tmp_4_fu_349_p17 = 'bx;
assign tmp_4_fu_349_p18 = radixID_1_reg_433[2:0];
assign trunc_ln25_1_fu_285_p1 = ap_sig_allocacmp_radixID_1[6:0];
assign trunc_ln25_fu_346_p1 = radixID_1_reg_433[2:0];
assign zext_ln23_fu_404_p1 = lshr_ln5_fu_395_p4;
assign zext_ln27_1_fu_334_p1 = lshr_ln27_1_fu_324_p4;
assign zext_ln27_fu_313_p1 = lshr_ln6_fu_303_p4;
endmodule 
