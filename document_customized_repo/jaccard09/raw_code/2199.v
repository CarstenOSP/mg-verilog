module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_address1,W_3_ce1,W_3_q1,W_3_address2,W_3_ce2,W_3_q2,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_address1,W_2_ce1,W_2_q1,W_2_address2,W_2_ce2,W_2_q2,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_address1,W_1_ce1,W_1_q1,W_1_address2,W_1_ce2,W_1_q2,W_address0,W_ce0,W_we0,W_d0,W_address1,W_ce1,W_q1,W_address2,W_ce2,W_q2); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
output  [4:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [4:0] W_3_address2;
output   W_3_ce2;
input  [31:0] W_3_q2;
output  [4:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
output  [4:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [4:0] W_2_address2;
output   W_2_ce2;
input  [31:0] W_2_q2;
output  [4:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
output  [4:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [4:0] W_1_address2;
output   W_1_ce2;
input  [31:0] W_1_q2;
output  [4:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
output  [4:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [4:0] W_address2;
output   W_ce2;
input  [31:0] W_q2;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln106_fu_288_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] i_3_reg_542;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln106_1_fu_294_p1;
reg   [1:0] trunc_ln106_1_reg_555;
reg   [1:0] trunc_ln106_1_reg_555_pp0_iter1_reg;
reg   [4:0] lshr_ln_reg_563;
wire   [63:0] zext_ln108_fu_336_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln108_1_fu_359_p1;
wire   [63:0] zext_ln108_2_fu_382_p1;
wire   [63:0] zext_ln108_3_fu_406_p1;
wire   [63:0] zext_ln99_fu_414_p1;
reg   [6:0] i_fu_64;
wire   [6:0] add_ln106_fu_298_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_ce1_local;
reg   [4:0] W_address1_local;
reg    W_ce2_local;
reg    W_we0_local;
wire   [31:0] xor_ln108_2_fu_525_p2;
reg    W_ce0_local;
reg    W_1_ce1_local;
reg   [4:0] W_1_address1_local;
reg    W_1_ce2_local;
reg    W_1_we0_local;
reg    W_1_ce0_local;
reg    W_2_ce1_local;
reg   [4:0] W_2_address1_local;
reg    W_2_ce2_local;
reg    W_2_we0_local;
reg    W_2_ce0_local;
reg    W_3_ce1_local;
reg   [4:0] W_3_address1_local;
reg    W_3_ce2_local;
reg    W_3_we0_local;
reg    W_3_ce0_local;
wire   [6:0] add_ln108_fu_321_p2;
wire   [4:0] lshr_ln1_fu_326_p4;
wire   [6:0] add_ln108_1_fu_344_p2;
wire   [4:0] lshr_ln108_1_fu_349_p4;
wire   [6:0] add_ln108_2_fu_367_p2;
wire   [4:0] lshr_ln108_2_fu_372_p4;
wire   [5:0] trunc_ln106_fu_309_p1;
wire   [5:0] add_ln108_3_fu_390_p2;
wire   [3:0] lshr_ln108_3_fu_396_p4;
wire   [31:0] tmp_fu_421_p9;
wire   [31:0] tmp_1_fu_444_p9;
wire   [31:0] tmp_2_fu_467_p9;
wire   [31:0] tmp_3_fu_490_p9;
wire   [31:0] tmp_fu_421_p11;
wire   [31:0] tmp_2_fu_467_p11;
wire   [31:0] tmp_1_fu_444_p11;
wire   [31:0] tmp_3_fu_490_p11;
wire   [31:0] xor_ln108_1_fu_519_p2;
wire   [31:0] xor_ln108_fu_513_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_210;
wire  signed [1:0] tmp_fu_421_p1;
wire   [1:0] tmp_fu_421_p3;
wire   [1:0] tmp_fu_421_p5;
wire  signed [1:0] tmp_fu_421_p7;
wire   [1:0] tmp_1_fu_444_p1;
wire   [1:0] tmp_1_fu_444_p3;
wire  signed [1:0] tmp_1_fu_444_p5;
wire  signed [1:0] tmp_1_fu_444_p7;
wire  signed [1:0] tmp_2_fu_467_p1;
wire  signed [1:0] tmp_2_fu_467_p3;
wire   [1:0] tmp_2_fu_467_p5;
wire   [1:0] tmp_2_fu_467_p7;
wire   [1:0] tmp_3_fu_490_p1;
wire   [1:0] tmp_3_fu_490_p3;
wire  signed [1:0] tmp_3_fu_490_p5;
wire  signed [1:0] tmp_3_fu_490_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_64 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U6(.din0(W_q1),.din1(W_1_q1),.din2(W_2_q1),.din3(W_3_q1),.def(tmp_fu_421_p9),.sel(trunc_ln106_1_reg_555_pp0_iter1_reg),.dout(tmp_fu_421_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U7(.din0(W_q2),.din1(W_1_q2),.din2(W_2_q2),.din3(W_3_q2),.def(tmp_1_fu_444_p9),.sel(trunc_ln106_1_reg_555_pp0_iter1_reg),.dout(tmp_1_fu_444_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U8(.din0(W_q1),.din1(W_1_q1),.din2(W_2_q1),.din3(W_3_q1),.def(tmp_2_fu_467_p9),.sel(trunc_ln106_1_reg_555_pp0_iter1_reg),.dout(tmp_2_fu_467_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U9(.din0(W_q1),.din1(W_1_q1),.din2(W_2_q1),.din3(W_3_q1),.def(tmp_3_fu_490_p9),.sel(trunc_ln106_1_reg_555_pp0_iter1_reg),.dout(tmp_3_fu_490_p11));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln106_fu_288_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_64 <= add_ln106_fu_298_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_64 <= 7'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        i_3_reg_542 <= ap_sig_allocacmp_i_3;
        lshr_ln_reg_563 <= {{i_3_reg_542[6:2]}};
        trunc_ln106_1_reg_555 <= trunc_ln106_1_fu_294_p1;
        trunc_ln106_1_reg_555_pp0_iter1_reg <= trunc_ln106_1_reg_555;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_210)) begin
        if ((trunc_ln106_1_reg_555 == 2'd1)) begin
            W_1_address1_local = zext_ln108_3_fu_406_p1;
        end else if ((trunc_ln106_1_reg_555 == 2'd3)) begin
            W_1_address1_local = zext_ln108_2_fu_382_p1;
        end else if ((trunc_ln106_1_reg_555 == 2'd0)) begin
            W_1_address1_local = zext_ln108_fu_336_p1;
        end else begin
            W_1_address1_local = 'bx;
        end
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd3)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce2_local = 1'b1;
    end else begin
        W_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln106_1_reg_555_pp0_iter1_reg == 2'd1))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_210)) begin
        if ((trunc_ln106_1_reg_555 == 2'd2)) begin
            W_2_address1_local = zext_ln108_3_fu_406_p1;
        end else if ((trunc_ln106_1_reg_555 == 2'd0)) begin
            W_2_address1_local = zext_ln108_2_fu_382_p1;
        end else if ((trunc_ln106_1_reg_555 == 2'd1)) begin
            W_2_address1_local = zext_ln108_fu_336_p1;
        end else begin
            W_2_address1_local = 'bx;
        end
    end else begin
        W_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd0)))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce2_local = 1'b1;
    end else begin
        W_2_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln106_1_reg_555_pp0_iter1_reg == 2'd2))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_210)) begin
        if ((trunc_ln106_1_reg_555 == 2'd3)) begin
            W_3_address1_local = zext_ln108_3_fu_406_p1;
        end else if ((trunc_ln106_1_reg_555 == 2'd1)) begin
            W_3_address1_local = zext_ln108_2_fu_382_p1;
        end else if ((trunc_ln106_1_reg_555 == 2'd2)) begin
            W_3_address1_local = zext_ln108_fu_336_p1;
        end else begin
            W_3_address1_local = 'bx;
        end
    end else begin
        W_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd3)))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce2_local = 1'b1;
    end else begin
        W_3_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln106_1_reg_555_pp0_iter1_reg == 2'd3))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_210)) begin
        if ((trunc_ln106_1_reg_555 == 2'd0)) begin
            W_address1_local = zext_ln108_3_fu_406_p1;
        end else if ((trunc_ln106_1_reg_555 == 2'd2)) begin
            W_address1_local = zext_ln108_2_fu_382_p1;
        end else if ((trunc_ln106_1_reg_555 == 2'd3)) begin
            W_address1_local = zext_ln108_fu_336_p1;
        end else begin
            W_address1_local = 'bx;
        end
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_555 == 2'd3)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce2_local = 1'b1;
    end else begin
        W_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln106_1_reg_555_pp0_iter1_reg == 2'd0))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_288_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_64;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign W_1_address0 = zext_ln99_fu_414_p1;
assign W_1_address1 = W_1_address1_local;
assign W_1_address2 = zext_ln108_1_fu_359_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_ce2 = W_1_ce2_local;
assign W_1_d0 = xor_ln108_2_fu_525_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = zext_ln99_fu_414_p1;
assign W_2_address1 = W_2_address1_local;
assign W_2_address2 = zext_ln108_1_fu_359_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_ce2 = W_2_ce2_local;
assign W_2_d0 = xor_ln108_2_fu_525_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = zext_ln99_fu_414_p1;
assign W_3_address1 = W_3_address1_local;
assign W_3_address2 = zext_ln108_1_fu_359_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_ce2 = W_3_ce2_local;
assign W_3_d0 = xor_ln108_2_fu_525_p2;
assign W_3_we0 = W_3_we0_local;
assign W_address0 = zext_ln99_fu_414_p1;
assign W_address1 = W_address1_local;
assign W_address2 = zext_ln108_1_fu_359_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_ce2 = W_ce2_local;
assign W_d0 = xor_ln108_2_fu_525_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_298_p2 = (ap_sig_allocacmp_i_3 + 7'd1);
assign add_ln108_1_fu_344_p2 = ($signed(i_3_reg_542) + $signed(7'd120));
assign add_ln108_2_fu_367_p2 = ($signed(i_3_reg_542) + $signed(7'd114));
assign add_ln108_3_fu_390_p2 = ($signed(trunc_ln106_fu_309_p1) + $signed(6'd48));
assign add_ln108_fu_321_p2 = ($signed(i_3_reg_542) + $signed(7'd125));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_210 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_288_p2 = ((ap_sig_allocacmp_i_3 == 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_349_p4 = {{add_ln108_1_fu_344_p2[6:2]}};
assign lshr_ln108_2_fu_372_p4 = {{add_ln108_2_fu_367_p2[6:2]}};
assign lshr_ln108_3_fu_396_p4 = {{add_ln108_3_fu_390_p2[5:2]}};
assign lshr_ln1_fu_326_p4 = {{add_ln108_fu_321_p2[6:2]}};
assign tmp_1_fu_444_p9 = 'bx;
assign tmp_2_fu_467_p9 = 'bx;
assign tmp_3_fu_490_p9 = 'bx;
assign tmp_fu_421_p9 = 'bx;
assign trunc_ln106_1_fu_294_p1 = ap_sig_allocacmp_i_3[1:0];
assign trunc_ln106_fu_309_p1 = i_3_reg_542[5:0];
assign xor_ln108_1_fu_519_p2 = (tmp_3_fu_490_p11 ^ tmp_1_fu_444_p11);
assign xor_ln108_2_fu_525_p2 = (xor_ln108_fu_513_p2 ^ xor_ln108_1_fu_519_p2);
assign xor_ln108_fu_513_p2 = (tmp_fu_421_p11 ^ tmp_2_fu_467_p11);
assign zext_ln108_1_fu_359_p1 = lshr_ln108_1_fu_349_p4;
assign zext_ln108_2_fu_382_p1 = lshr_ln108_2_fu_372_p4;
assign zext_ln108_3_fu_406_p1 = lshr_ln108_3_fu_396_p4;
assign zext_ln108_fu_336_p1 = lshr_ln1_fu_326_p4;
assign zext_ln99_fu_414_p1 = lshr_ln_reg_563;
endmodule 