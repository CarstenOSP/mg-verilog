module ss_sort_ss_sort_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_3_q0,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_2_q0,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_1_q0,bucket_3_address0,bucket_3_ce0,bucket_3_q0); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
input  [31:0] sum_0_q0;
output  [4:0] sum_3_address0;
output   sum_3_ce0;
output   sum_3_we0;
output  [31:0] sum_3_d0;
input  [31:0] sum_3_q0;
output  [4:0] sum_2_address0;
output   sum_2_ce0;
output   sum_2_we0;
output  [31:0] sum_2_d0;
input  [31:0] sum_2_q0;
output  [4:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
input  [31:0] sum_1_q0;
output  [8:0] bucket_3_address0;
output   bucket_3_ce0;
input  [31:0] bucket_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln25_fu_179_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state3;
reg   [7:0] radixID_1_reg_311;
wire   [1:0] trunc_ln25_fu_242_p1;
reg   [1:0] trunc_ln25_reg_346;
wire    ap_CS_fsm_state2;
wire   [31:0] tmp_6_fu_245_p11;
reg   [31:0] tmp_6_reg_350;
reg   [31:0] bucket_3_load_4_reg_355;
wire   [63:0] zext_ln27_1_fu_234_p1;
wire   [63:0] zext_ln27_fu_213_p1;
wire   [63:0] zext_ln23_fu_278_p1;
reg   [7:0] radixID_fu_70;
wire   [7:0] add_ln25_fu_294_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_radixID_1;
reg    sum_0_ce0_local;
reg   [4:0] sum_0_address0_local;
reg    sum_0_we0_local;
wire   [31:0] add_ln27_1_fu_286_p2;
reg    sum_1_ce0_local;
reg   [4:0] sum_1_address0_local;
reg    sum_1_we0_local;
reg    sum_2_ce0_local;
reg   [4:0] sum_2_address0_local;
reg    sum_2_we0_local;
reg    sum_3_ce0_local;
reg   [4:0] sum_3_address0_local;
reg    sum_3_we0_local;
reg    bucket_3_ce0_local;
wire   [6:0] trunc_ln25_1_fu_185_p1;
wire   [10:0] shl_ln1_fu_189_p3;
wire   [10:0] add_ln26_fu_197_p2;
wire   [8:0] lshr_ln4_fu_203_p4;
wire   [6:0] add_ln27_fu_218_p2;
wire   [4:0] lshr_ln27_1_fu_224_p4;
wire   [31:0] tmp_6_fu_245_p9;
wire   [1:0] tmp_6_fu_245_p10;
wire   [4:0] lshr_ln3_fu_269_p4;
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
wire   [1:0] tmp_6_fu_245_p1;
wire  signed [1:0] tmp_6_fu_245_p3;
wire  signed [1:0] tmp_6_fu_245_p5;
wire   [1:0] tmp_6_fu_245_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 radixID_fu_70 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_2_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_x_U34(.din0(sum_0_q0),.din1(sum_1_q0),.din2(sum_2_q0),.din3(sum_3_q0),.def(tmp_6_fu_245_p9),.sel(tmp_6_fu_245_p10),.dout(tmp_6_fu_245_p11));
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
        radixID_fu_70 <= 8'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        radixID_fu_70 <= add_ln25_fu_294_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_3_load_4_reg_355 <= bucket_3_q0;
        tmp_6_reg_350 <= tmp_6_fu_245_p11;
        trunc_ln25_reg_346 <= trunc_ln25_fu_242_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        radixID_1_reg_311 <= ap_sig_allocacmp_radixID_1;
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
    if (((icmp_ln25_fu_179_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_radixID_1 = radixID_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln25_reg_346 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_0_address0_local = zext_ln23_fu_278_p1;
    end else if (((icmp_ln25_fu_179_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_0_address0_local = zext_ln27_1_fu_234_p1;
    end else begin
        sum_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln25_reg_346 == 2'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln25_fu_179_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln25_reg_346 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln25_reg_346 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_1_address0_local = zext_ln23_fu_278_p1;
    end else if (((icmp_ln25_fu_179_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_1_address0_local = zext_ln27_1_fu_234_p1;
    end else begin
        sum_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln25_reg_346 == 2'd1) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln25_fu_179_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln25_reg_346 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln25_reg_346 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_2_address0_local = zext_ln23_fu_278_p1;
    end else if (((icmp_ln25_fu_179_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_2_address0_local = zext_ln27_1_fu_234_p1;
    end else begin
        sum_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln25_reg_346 == 2'd2) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln25_fu_179_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_2_ce0_local = 1'b1;
    end else begin
        sum_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln25_reg_346 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_2_we0_local = 1'b1;
    end else begin
        sum_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln25_reg_346 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_3_address0_local = zext_ln23_fu_278_p1;
    end else if (((icmp_ln25_fu_179_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_3_address0_local = zext_ln27_1_fu_234_p1;
    end else begin
        sum_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln25_reg_346 == 2'd3) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln25_fu_179_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_3_ce0_local = 1'b1;
    end else begin
        sum_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln25_reg_346 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_3_we0_local = 1'b1;
    end else begin
        sum_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln25_fu_179_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
assign add_ln25_fu_294_p2 = (radixID_1_reg_311 + 8'd1);
assign add_ln26_fu_197_p2 = ($signed(shl_ln1_fu_189_p3) + $signed(11'd2047));
assign add_ln27_1_fu_286_p2 = (bucket_3_load_4_reg_355 + tmp_6_reg_350);
assign add_ln27_fu_218_p2 = ($signed(trunc_ln25_1_fu_185_p1) + $signed(7'd127));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bucket_3_address0 = zext_ln27_fu_213_p1;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign icmp_ln25_fu_179_p2 = ((ap_sig_allocacmp_radixID_1 == 8'd128) ? 1'b1 : 1'b0);
assign lshr_ln27_1_fu_224_p4 = {{add_ln27_fu_218_p2[6:2]}};
assign lshr_ln3_fu_269_p4 = {{radixID_1_reg_311[6:2]}};
assign lshr_ln4_fu_203_p4 = {{add_ln26_fu_197_p2[10:2]}};
assign shl_ln1_fu_189_p3 = {{trunc_ln25_1_fu_185_p1}, {4'd0}};
assign sum_0_address0 = sum_0_address0_local;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_0_d0 = add_ln27_1_fu_286_p2;
assign sum_0_we0 = sum_0_we0_local;
assign sum_1_address0 = sum_1_address0_local;
assign sum_1_ce0 = sum_1_ce0_local;
assign sum_1_d0 = add_ln27_1_fu_286_p2;
assign sum_1_we0 = sum_1_we0_local;
assign sum_2_address0 = sum_2_address0_local;
assign sum_2_ce0 = sum_2_ce0_local;
assign sum_2_d0 = add_ln27_1_fu_286_p2;
assign sum_2_we0 = sum_2_we0_local;
assign sum_3_address0 = sum_3_address0_local;
assign sum_3_ce0 = sum_3_ce0_local;
assign sum_3_d0 = add_ln27_1_fu_286_p2;
assign sum_3_we0 = sum_3_we0_local;
assign tmp_6_fu_245_p10 = radixID_1_reg_311[1:0];
assign tmp_6_fu_245_p9 = 'bx;
assign trunc_ln25_1_fu_185_p1 = ap_sig_allocacmp_radixID_1[6:0];
assign trunc_ln25_fu_242_p1 = radixID_1_reg_311[1:0];
assign zext_ln23_fu_278_p1 = lshr_ln3_fu_269_p4;
assign zext_ln27_1_fu_234_p1 = lshr_ln27_1_fu_224_p4;
assign zext_ln27_fu_213_p1 = lshr_ln4_fu_203_p4;
endmodule 