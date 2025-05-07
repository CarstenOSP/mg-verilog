module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln104_14,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_address1,W_7_ce1,W_7_q1,W_7_address2,W_7_ce2,W_7_q2,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_address1,W_6_ce1,W_6_q1,W_6_address2,W_6_ce2,W_6_q2,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_address1,W_5_ce1,W_5_q1,W_5_address2,W_5_ce2,W_5_q2,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_address1,W_4_ce1,W_4_q1,W_4_address2,W_4_ce2,W_4_q2,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_address1,W_3_ce1,W_3_q1,W_3_address2,W_3_ce2,W_3_q2,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_address1,W_2_ce1,W_2_q1,W_2_address2,W_2_ce2,W_2_q2,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_address1,W_1_ce1,W_1_q1,W_1_address2,W_1_ce2,W_1_q2,W_address0,W_ce0,W_we0,W_d0,W_address1,W_ce1,W_q1,W_address2,W_ce2,W_q2); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [30:0] zext_ln104_14;
output  [3:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
output  [3:0] W_7_address1;
output   W_7_ce1;
input  [31:0] W_7_q1;
output  [3:0] W_7_address2;
output   W_7_ce2;
input  [31:0] W_7_q2;
output  [3:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
output  [3:0] W_6_address1;
output   W_6_ce1;
input  [31:0] W_6_q1;
output  [3:0] W_6_address2;
output   W_6_ce2;
input  [31:0] W_6_q2;
output  [3:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
output  [3:0] W_5_address1;
output   W_5_ce1;
input  [31:0] W_5_q1;
output  [3:0] W_5_address2;
output   W_5_ce2;
input  [31:0] W_5_q2;
output  [3:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
output  [3:0] W_4_address1;
output   W_4_ce1;
input  [31:0] W_4_q1;
output  [3:0] W_4_address2;
output   W_4_ce2;
input  [31:0] W_4_q2;
output  [3:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
output  [3:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [3:0] W_3_address2;
output   W_3_ce2;
input  [31:0] W_3_q2;
output  [3:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
output  [3:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [3:0] W_2_address2;
output   W_2_ce2;
input  [31:0] W_2_q2;
output  [3:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
output  [3:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [3:0] W_1_address2;
output   W_1_ce2;
input  [31:0] W_1_q2;
output  [3:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
output  [3:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [3:0] W_address2;
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
wire   [0:0] icmp_ln106_fu_505_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_3_reg_938;
wire   [2:0] trunc_ln106_1_fu_511_p1;
reg   [2:0] trunc_ln106_1_reg_954;
reg   [2:0] trunc_ln106_1_reg_954_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_965;
wire   [63:0] zext_ln108_fu_553_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln108_1_fu_576_p1;
wire   [63:0] zext_ln108_2_fu_599_p1;
wire   [63:0] zext_ln108_3_fu_623_p1;
wire   [63:0] zext_ln108_4_fu_646_p1;
wire   [63:0] zext_ln108_5_fu_669_p1;
wire   [63:0] zext_ln108_6_fu_692_p1;
wire   [63:0] zext_ln99_fu_703_p1;
reg   [6:0] i_fu_82;
wire   [6:0] add_ln106_fu_515_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg   [31:0] store_forwarded_fu_86;
wire   [31:0] xor_ln108_2_fu_818_p2;
wire   [31:0] zext_ln104_14_cast_fu_488_p1;
reg    W_1_ce1_local;
reg   [3:0] W_1_address1_local;
reg    W_1_ce2_local;
reg    W_1_we0_local;
wire   [31:0] xor_ln108_5_fu_909_p2;
reg    W_1_ce0_local;
reg    W_3_ce1_local;
reg   [3:0] W_3_address1_local;
reg    W_3_ce2_local;
reg    W_3_we0_local;
reg    W_3_ce0_local;
reg    W_5_ce1_local;
reg   [3:0] W_5_address1_local;
reg    W_5_ce2_local;
reg    W_5_we0_local;
reg    W_5_ce0_local;
reg    W_7_ce1_local;
reg   [3:0] W_7_address1_local;
reg    W_7_ce2_local;
reg    W_7_we0_local;
reg    W_7_ce0_local;
reg    W_ce2_local;
reg    W_ce1_local;
reg   [3:0] W_address1_local;
reg    W_we0_local;
reg    W_ce0_local;
reg    W_2_ce2_local;
reg    W_2_ce1_local;
reg   [3:0] W_2_address1_local;
reg    W_2_we0_local;
reg    W_2_ce0_local;
reg    W_4_ce2_local;
reg    W_4_ce1_local;
reg   [3:0] W_4_address1_local;
reg    W_4_we0_local;
reg    W_4_ce0_local;
reg    W_6_ce2_local;
reg    W_6_ce1_local;
reg   [3:0] W_6_address1_local;
reg    W_6_we0_local;
reg    W_6_ce0_local;
wire   [6:0] add_ln108_fu_538_p2;
wire   [3:0] lshr_ln1_fu_543_p4;
wire   [6:0] add_ln108_1_fu_561_p2;
wire   [3:0] lshr_ln108_1_fu_566_p4;
wire   [6:0] add_ln108_2_fu_584_p2;
wire   [3:0] lshr_ln108_2_fu_589_p4;
wire   [5:0] trunc_ln106_fu_526_p1;
wire   [5:0] add_ln108_3_fu_607_p2;
wire   [2:0] lshr_ln108_3_fu_613_p4;
wire   [6:0] add_ln108_4_fu_631_p2;
wire   [3:0] lshr_ln108_4_fu_636_p4;
wire   [6:0] add_ln108_5_fu_654_p2;
wire   [3:0] lshr_ln108_5_fu_659_p4;
wire   [6:0] add_ln108_6_fu_677_p2;
wire   [3:0] lshr_ln108_6_fu_682_p4;
wire   [31:0] tmp_fu_714_p9;
wire   [31:0] tmp_1_fu_737_p9;
wire   [31:0] tmp_2_fu_760_p9;
wire   [31:0] tmp_3_fu_783_p9;
wire   [31:0] tmp_1_fu_737_p11;
wire   [31:0] tmp_3_fu_783_p11;
wire   [31:0] tmp_fu_714_p11;
wire   [31:0] tmp_2_fu_760_p11;
wire   [31:0] xor_ln108_fu_812_p2;
wire   [31:0] xor_ln108_1_fu_806_p2;
wire   [31:0] tmp_4_fu_828_p9;
wire   [31:0] tmp_5_fu_851_p9;
wire   [31:0] tmp_6_fu_874_p9;
wire   [31:0] tmp_5_fu_851_p11;
wire   [31:0] tmp_4_fu_828_p11;
wire   [31:0] tmp_6_fu_874_p11;
wire   [31:0] xor_ln108_4_fu_903_p2;
wire   [31:0] xor_ln108_3_fu_897_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_350;
wire  signed [2:0] tmp_fu_714_p1;
wire  signed [2:0] tmp_fu_714_p3;
wire   [2:0] tmp_fu_714_p5;
wire   [2:0] tmp_fu_714_p7;
wire   [2:0] tmp_1_fu_737_p1;
wire   [2:0] tmp_1_fu_737_p3;
wire  signed [2:0] tmp_1_fu_737_p5;
wire  signed [2:0] tmp_1_fu_737_p7;
wire  signed [2:0] tmp_2_fu_760_p1;
wire   [2:0] tmp_2_fu_760_p3;
wire   [2:0] tmp_2_fu_760_p5;
wire  signed [2:0] tmp_2_fu_760_p7;
wire   [2:0] tmp_3_fu_783_p1;
wire   [2:0] tmp_3_fu_783_p3;
wire  signed [2:0] tmp_3_fu_783_p5;
wire  signed [2:0] tmp_3_fu_783_p7;
wire   [2:0] tmp_4_fu_828_p1;
wire   [2:0] tmp_4_fu_828_p3;
wire  signed [2:0] tmp_4_fu_828_p5;
wire  signed [2:0] tmp_4_fu_828_p7;
wire  signed [2:0] tmp_5_fu_851_p1;
wire   [2:0] tmp_5_fu_851_p3;
wire   [2:0] tmp_5_fu_851_p5;
wire  signed [2:0] tmp_5_fu_851_p7;
wire   [2:0] tmp_6_fu_874_p1;
wire   [2:0] tmp_6_fu_874_p3;
wire  signed [2:0] tmp_6_fu_874_p5;
wire  signed [2:0] tmp_6_fu_874_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_82 = 7'd0;
#0 store_forwarded_fu_86 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 32 ),.CASE1( 3'h6 ),.din1_WIDTH( 32 ),.CASE2( 3'h0 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U6(.din0(W_1_q1),.din1(W_3_q1),.din2(W_5_q1),.din3(W_7_q1),.def(tmp_fu_714_p9),.sel(trunc_ln106_1_reg_954_pp0_iter1_reg),.dout(tmp_fu_714_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U7(.din0(W_q2),.din1(W_2_q2),.din2(W_4_q2),.din3(W_6_q2),.def(tmp_1_fu_737_p9),.sel(trunc_ln106_1_reg_954_pp0_iter1_reg),.dout(tmp_1_fu_737_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U8(.din0(W_q1),.din1(W_2_q1),.din2(W_4_q1),.din3(W_6_q1),.def(tmp_2_fu_760_p9),.sel(trunc_ln106_1_reg_954_pp0_iter1_reg),.dout(tmp_2_fu_760_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U9(.din0(W_q1),.din1(W_2_q1),.din2(W_4_q1),.din3(W_6_q1),.def(tmp_3_fu_783_p9),.sel(trunc_ln106_1_reg_954_pp0_iter1_reg),.dout(tmp_3_fu_783_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U10(.din0(W_1_q2),.din1(W_3_q2),.din2(W_5_q2),.din3(W_7_q2),.def(tmp_4_fu_828_p9),.sel(trunc_ln106_1_reg_954_pp0_iter1_reg),.dout(tmp_4_fu_828_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U11(.din0(W_1_q1),.din1(W_3_q1),.din2(W_5_q1),.din3(W_7_q1),.def(tmp_5_fu_851_p9),.sel(trunc_ln106_1_reg_954_pp0_iter1_reg),.dout(tmp_5_fu_851_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U12(.din0(W_1_q1),.din1(W_3_q1),.din2(W_5_q1),.din3(W_7_q1),.def(tmp_6_fu_874_p9),.sel(trunc_ln106_1_reg_954_pp0_iter1_reg),.dout(tmp_6_fu_874_p11));
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
        if (((icmp_ln106_fu_505_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_82 <= add_ln106_fu_515_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_82 <= 7'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            store_forwarded_fu_86 <= zext_ln104_14_cast_fu_488_p1;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            store_forwarded_fu_86 <= xor_ln108_2_fu_818_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        i_3_reg_938 <= ap_sig_allocacmp_i_3;
        lshr_ln_reg_965 <= {{i_3_reg_938[6:3]}};
        trunc_ln106_1_reg_954 <= trunc_ln106_1_fu_511_p1;
        trunc_ln106_1_reg_954_pp0_iter1_reg <= trunc_ln106_1_reg_954;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((trunc_ln106_1_reg_954 == 3'd0)) begin
            W_1_address1_local = zext_ln108_6_fu_692_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd6)) begin
            W_1_address1_local = zext_ln108_5_fu_669_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd4)) begin
            W_1_address1_local = zext_ln108_fu_553_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((trunc_ln106_1_reg_954 == 3'd2)) begin
            W_2_address1_local = zext_ln108_3_fu_623_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd0)) begin
            W_2_address1_local = zext_ln108_2_fu_599_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((trunc_ln106_1_reg_954 == 3'd2)) begin
            W_3_address1_local = zext_ln108_6_fu_692_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd0)) begin
            W_3_address1_local = zext_ln108_5_fu_669_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd6)) begin
            W_3_address1_local = zext_ln108_fu_553_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((trunc_ln106_1_reg_954 == 3'd4)) begin
            W_4_address1_local = zext_ln108_3_fu_623_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd2)) begin
            W_4_address1_local = zext_ln108_2_fu_599_p1;
        end else begin
            W_4_address1_local = 'bx;
        end
    end else begin
        W_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce2_local = 1'b1;
    end else begin
        W_4_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((trunc_ln106_1_reg_954 == 3'd4)) begin
            W_5_address1_local = zext_ln108_6_fu_692_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd2)) begin
            W_5_address1_local = zext_ln108_5_fu_669_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd0)) begin
            W_5_address1_local = zext_ln108_fu_553_p1;
        end else begin
            W_5_address1_local = 'bx;
        end
    end else begin
        W_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce2_local = 1'b1;
    end else begin
        W_5_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((trunc_ln106_1_reg_954 == 3'd6)) begin
            W_6_address1_local = zext_ln108_3_fu_623_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd4)) begin
            W_6_address1_local = zext_ln108_2_fu_599_p1;
        end else begin
            W_6_address1_local = 'bx;
        end
    end else begin
        W_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce2_local = 1'b1;
    end else begin
        W_6_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd4) & ~(trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd2) & ~(trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((trunc_ln106_1_reg_954 == 3'd6)) begin
            W_7_address1_local = zext_ln108_6_fu_692_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd4)) begin
            W_7_address1_local = zext_ln108_5_fu_669_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd2)) begin
            W_7_address1_local = zext_ln108_fu_553_p1;
        end else begin
            W_7_address1_local = 'bx;
        end
    end else begin
        W_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce2_local = 1'b1;
    end else begin
        W_7_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd4) & ~(trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd2) & ~(trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((trunc_ln106_1_reg_954 == 3'd0)) begin
            W_address1_local = zext_ln108_3_fu_623_p1;
        end else if ((trunc_ln106_1_reg_954 == 3'd6)) begin
            W_address1_local = zext_ln108_2_fu_599_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_954_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_505_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_82;
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
assign W_1_address0 = zext_ln99_fu_703_p1;
assign W_1_address1 = W_1_address1_local;
assign W_1_address2 = zext_ln108_4_fu_646_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_ce2 = W_1_ce2_local;
assign W_1_d0 = xor_ln108_5_fu_909_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = zext_ln99_fu_703_p1;
assign W_2_address1 = W_2_address1_local;
assign W_2_address2 = zext_ln108_1_fu_576_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_ce2 = W_2_ce2_local;
assign W_2_d0 = xor_ln108_2_fu_818_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = zext_ln99_fu_703_p1;
assign W_3_address1 = W_3_address1_local;
assign W_3_address2 = zext_ln108_4_fu_646_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_ce2 = W_3_ce2_local;
assign W_3_d0 = xor_ln108_5_fu_909_p2;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = zext_ln99_fu_703_p1;
assign W_4_address1 = W_4_address1_local;
assign W_4_address2 = zext_ln108_1_fu_576_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_4_ce2 = W_4_ce2_local;
assign W_4_d0 = xor_ln108_2_fu_818_p2;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = zext_ln99_fu_703_p1;
assign W_5_address1 = W_5_address1_local;
assign W_5_address2 = zext_ln108_4_fu_646_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_5_ce2 = W_5_ce2_local;
assign W_5_d0 = xor_ln108_5_fu_909_p2;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = zext_ln99_fu_703_p1;
assign W_6_address1 = W_6_address1_local;
assign W_6_address2 = zext_ln108_1_fu_576_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_6_ce2 = W_6_ce2_local;
assign W_6_d0 = xor_ln108_2_fu_818_p2;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = zext_ln99_fu_703_p1;
assign W_7_address1 = W_7_address1_local;
assign W_7_address2 = zext_ln108_4_fu_646_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_ce2 = W_7_ce2_local;
assign W_7_d0 = xor_ln108_5_fu_909_p2;
assign W_7_we0 = W_7_we0_local;
assign W_address0 = zext_ln99_fu_703_p1;
assign W_address1 = W_address1_local;
assign W_address2 = zext_ln108_1_fu_576_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_ce2 = W_ce2_local;
assign W_d0 = xor_ln108_2_fu_818_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_515_p2 = (ap_sig_allocacmp_i_3 + 7'd2);
assign add_ln108_1_fu_561_p2 = ($signed(i_3_reg_938) + $signed(7'd120));
assign add_ln108_2_fu_584_p2 = ($signed(i_3_reg_938) + $signed(7'd114));
assign add_ln108_3_fu_607_p2 = ($signed(trunc_ln106_fu_526_p1) + $signed(6'd48));
assign add_ln108_4_fu_631_p2 = ($signed(i_3_reg_938) + $signed(7'd121));
assign add_ln108_5_fu_654_p2 = ($signed(i_3_reg_938) + $signed(7'd115));
assign add_ln108_6_fu_677_p2 = ($signed(i_3_reg_938) + $signed(7'd113));
assign add_ln108_fu_538_p2 = ($signed(i_3_reg_938) + $signed(7'd125));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_350 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_505_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_566_p4 = {{add_ln108_1_fu_561_p2[6:3]}};
assign lshr_ln108_2_fu_589_p4 = {{add_ln108_2_fu_584_p2[6:3]}};
assign lshr_ln108_3_fu_613_p4 = {{add_ln108_3_fu_607_p2[5:3]}};
assign lshr_ln108_4_fu_636_p4 = {{add_ln108_4_fu_631_p2[6:3]}};
assign lshr_ln108_5_fu_659_p4 = {{add_ln108_5_fu_654_p2[6:3]}};
assign lshr_ln108_6_fu_682_p4 = {{add_ln108_6_fu_677_p2[6:3]}};
assign lshr_ln1_fu_543_p4 = {{add_ln108_fu_538_p2[6:3]}};
assign tmp_1_fu_737_p9 = 'bx;
assign tmp_2_fu_760_p9 = 'bx;
assign tmp_3_fu_783_p9 = 'bx;
assign tmp_4_fu_828_p9 = 'bx;
assign tmp_5_fu_851_p9 = 'bx;
assign tmp_6_fu_874_p9 = 'bx;
assign tmp_fu_714_p9 = 'bx;
assign trunc_ln106_1_fu_511_p1 = ap_sig_allocacmp_i_3[2:0];
assign trunc_ln106_fu_526_p1 = i_3_reg_938[5:0];
assign xor_ln108_1_fu_806_p2 = (tmp_3_fu_783_p11 ^ tmp_1_fu_737_p11);
assign xor_ln108_2_fu_818_p2 = (xor_ln108_fu_812_p2 ^ xor_ln108_1_fu_806_p2);
assign xor_ln108_3_fu_897_p2 = (tmp_5_fu_851_p11 ^ store_forwarded_fu_86);
assign xor_ln108_4_fu_903_p2 = (tmp_6_fu_874_p11 ^ tmp_4_fu_828_p11);
assign xor_ln108_5_fu_909_p2 = (xor_ln108_4_fu_903_p2 ^ xor_ln108_3_fu_897_p2);
assign xor_ln108_fu_812_p2 = (tmp_fu_714_p11 ^ tmp_2_fu_760_p11);
assign zext_ln104_14_cast_fu_488_p1 = zext_ln104_14;
assign zext_ln108_1_fu_576_p1 = lshr_ln108_1_fu_566_p4;
assign zext_ln108_2_fu_599_p1 = lshr_ln108_2_fu_589_p4;
assign zext_ln108_3_fu_623_p1 = lshr_ln108_3_fu_613_p4;
assign zext_ln108_4_fu_646_p1 = lshr_ln108_4_fu_636_p4;
assign zext_ln108_5_fu_669_p1 = lshr_ln108_5_fu_659_p4;
assign zext_ln108_6_fu_692_p1 = lshr_ln108_6_fu_682_p4;
assign zext_ln108_fu_553_p1 = lshr_ln1_fu_543_p4;
assign zext_ln99_fu_703_p1 = lshr_ln_reg_965;
endmodule 