
module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_address1,W_7_ce1,W_7_q1,W_7_address2,W_7_ce2,W_7_q2,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_address1,W_6_ce1,W_6_q1,W_6_address2,W_6_ce2,W_6_q2,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_address1,W_5_ce1,W_5_q1,W_5_address2,W_5_ce2,W_5_q2,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_address1,W_4_ce1,W_4_q1,W_4_address2,W_4_ce2,W_4_q2,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_address1,W_3_ce1,W_3_q1,W_3_address2,W_3_ce2,W_3_q2,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_address1,W_2_ce1,W_2_q1,W_2_address2,W_2_ce2,W_2_q2,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_address1,W_1_ce1,W_1_q1,W_1_address2,W_1_ce2,W_1_q2,W_address0,W_ce0,W_we0,W_d0,W_address1,W_ce1,W_q1,W_address2,W_ce2,W_q2);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
wire   [0:0] icmp_ln106_fu_516_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] i_3_reg_858;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln106_1_fu_522_p1;
reg   [2:0] trunc_ln106_1_reg_871;
reg   [2:0] trunc_ln106_1_reg_871_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_879;
wire   [63:0] zext_ln108_fu_564_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln108_1_fu_591_p1;
wire   [63:0] zext_ln108_2_fu_618_p1;
wire   [63:0] zext_ln108_3_fu_646_p1;
wire   [63:0] zext_ln99_fu_658_p1;
reg   [6:0] i_fu_80;
wire   [6:0] add_ln106_fu_526_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_ce1_local;
reg   [3:0] W_address1_local;
reg    W_ce2_local;
reg    W_we0_local;
wire   [31:0] xor_ln108_2_fu_837_p2;
reg    W_ce0_local;
reg    W_1_ce1_local;
reg   [3:0] W_1_address1_local;
reg    W_1_ce2_local;
reg    W_1_we0_local;
reg    W_1_ce0_local;
reg    W_2_ce1_local;
reg   [3:0] W_2_address1_local;
reg    W_2_ce2_local;
reg    W_2_we0_local;
reg    W_2_ce0_local;
reg    W_3_ce1_local;
reg   [3:0] W_3_address1_local;
reg    W_3_ce2_local;
reg    W_3_we0_local;
reg    W_3_ce0_local;
reg    W_4_ce1_local;
reg   [3:0] W_4_address1_local;
reg    W_4_ce2_local;
reg    W_4_we0_local;
reg    W_4_ce0_local;
reg    W_5_ce1_local;
reg   [3:0] W_5_address1_local;
reg    W_5_ce2_local;
reg    W_5_we0_local;
reg    W_5_ce0_local;
reg    W_6_ce1_local;
reg   [3:0] W_6_address1_local;
reg    W_6_ce2_local;
reg    W_6_we0_local;
reg    W_6_ce0_local;
reg    W_7_ce1_local;
reg   [3:0] W_7_address1_local;
reg    W_7_ce2_local;
reg    W_7_we0_local;
reg    W_7_ce0_local;
wire   [6:0] add_ln108_fu_549_p2;
wire   [3:0] lshr_ln1_fu_554_p4;
wire   [6:0] add_ln108_1_fu_576_p2;
wire   [3:0] lshr_ln108_1_fu_581_p4;
wire   [6:0] add_ln108_2_fu_603_p2;
wire   [3:0] lshr_ln108_2_fu_608_p4;
wire   [5:0] trunc_ln106_fu_537_p1;
wire   [5:0] add_ln108_3_fu_630_p2;
wire   [2:0] lshr_ln108_3_fu_636_p4;
wire   [31:0] tmp_fu_669_p17;
wire   [31:0] tmp_2_fu_708_p17;
wire   [31:0] tmp_3_fu_747_p17;
wire   [31:0] tmp_4_fu_786_p17;
wire   [31:0] tmp_fu_669_p19;
wire   [31:0] tmp_3_fu_747_p19;
wire   [31:0] tmp_2_fu_708_p19;
wire   [31:0] tmp_4_fu_786_p19;
wire   [31:0] xor_ln108_1_fu_831_p2;
wire   [31:0] xor_ln108_fu_825_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_354;
wire   [2:0] tmp_fu_669_p1;
wire  signed [2:0] tmp_fu_669_p3;
wire  signed [2:0] tmp_fu_669_p5;
wire  signed [2:0] tmp_fu_669_p7;
wire  signed [2:0] tmp_fu_669_p9;
wire   [2:0] tmp_fu_669_p11;
wire   [2:0] tmp_fu_669_p13;
wire   [2:0] tmp_fu_669_p15;
wire   [2:0] tmp_2_fu_708_p1;
wire   [2:0] tmp_2_fu_708_p3;
wire   [2:0] tmp_2_fu_708_p5;
wire   [2:0] tmp_2_fu_708_p7;
wire  signed [2:0] tmp_2_fu_708_p9;
wire  signed [2:0] tmp_2_fu_708_p11;
wire  signed [2:0] tmp_2_fu_708_p13;
wire  signed [2:0] tmp_2_fu_708_p15;
wire  signed [2:0] tmp_3_fu_747_p1;
wire  signed [2:0] tmp_3_fu_747_p3;
wire   [2:0] tmp_3_fu_747_p5;
wire   [2:0] tmp_3_fu_747_p7;
wire   [2:0] tmp_3_fu_747_p9;
wire   [2:0] tmp_3_fu_747_p11;
wire  signed [2:0] tmp_3_fu_747_p13;
wire  signed [2:0] tmp_3_fu_747_p15;
wire   [2:0] tmp_4_fu_786_p1;
wire   [2:0] tmp_4_fu_786_p3;
wire   [2:0] tmp_4_fu_786_p5;
wire   [2:0] tmp_4_fu_786_p7;
wire  signed [2:0] tmp_4_fu_786_p9;
wire  signed [2:0] tmp_4_fu_786_p11;
wire  signed [2:0] tmp_4_fu_786_p13;
wire  signed [2:0] tmp_4_fu_786_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_80 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 32 ),.CASE1( 3'h4 ),.din1_WIDTH( 32 ),.CASE2( 3'h5 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.CASE4( 3'h7 ),.din4_WIDTH( 32 ),.CASE5( 3'h0 ),.din5_WIDTH( 32 ),.CASE6( 3'h1 ),.din6_WIDTH( 32 ),.CASE7( 3'h2 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U6(.din0(W_q1),.din1(W_1_q1),.din2(W_2_q1),.din3(W_3_q1),.din4(W_4_q1),.din5(W_5_q1),.din6(W_6_q1),.din7(W_7_q1),.def(tmp_fu_669_p17),.sel(trunc_ln106_1_reg_871_pp0_iter1_reg),.dout(tmp_fu_669_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U7(.din0(W_q2),.din1(W_1_q2),.din2(W_2_q2),.din3(W_3_q2),.din4(W_4_q2),.din5(W_5_q2),.din6(W_6_q2),.din7(W_7_q2),.def(tmp_2_fu_708_p17),.sel(trunc_ln106_1_reg_871_pp0_iter1_reg),.dout(tmp_2_fu_708_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h7 ),.din1_WIDTH( 32 ),.CASE2( 3'h0 ),.din2_WIDTH( 32 ),.CASE3( 3'h1 ),.din3_WIDTH( 32 ),.CASE4( 3'h2 ),.din4_WIDTH( 32 ),.CASE5( 3'h3 ),.din5_WIDTH( 32 ),.CASE6( 3'h4 ),.din6_WIDTH( 32 ),.CASE7( 3'h5 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U8(.din0(W_q1),.din1(W_1_q1),.din2(W_2_q1),.din3(W_3_q1),.din4(W_4_q1),.din5(W_5_q1),.din6(W_6_q1),.din7(W_7_q1),.def(tmp_3_fu_747_p17),.sel(trunc_ln106_1_reg_871_pp0_iter1_reg),.dout(tmp_3_fu_747_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U9(.din0(W_q1),.din1(W_1_q1),.din2(W_2_q1),.din3(W_3_q1),.din4(W_4_q1),.din5(W_5_q1),.din6(W_6_q1),.din7(W_7_q1),.def(tmp_4_fu_786_p17),.sel(trunc_ln106_1_reg_871_pp0_iter1_reg),.dout(tmp_4_fu_786_p19));
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
        if (((icmp_ln106_fu_516_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_80 <= add_ln106_fu_526_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_80 <= 7'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        i_3_reg_858 <= ap_sig_allocacmp_i_3;
        lshr_ln_reg_879 <= {{i_3_reg_858[6:3]}};
        trunc_ln106_1_reg_871 <= trunc_ln106_1_fu_522_p1;
        trunc_ln106_1_reg_871_pp0_iter1_reg <= trunc_ln106_1_reg_871;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_354)) begin
        if ((trunc_ln106_1_reg_871 == 3'd1)) begin
            W_1_address1_local = zext_ln108_3_fu_646_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd7)) begin
            W_1_address1_local = zext_ln108_2_fu_618_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd4)) begin
            W_1_address1_local = zext_ln108_fu_564_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_354)) begin
        if ((trunc_ln106_1_reg_871 == 3'd2)) begin
            W_2_address1_local = zext_ln108_3_fu_646_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd0)) begin
            W_2_address1_local = zext_ln108_2_fu_618_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd5)) begin
            W_2_address1_local = zext_ln108_fu_564_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_354)) begin
        if ((trunc_ln106_1_reg_871 == 3'd3)) begin
            W_3_address1_local = zext_ln108_3_fu_646_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd1)) begin
            W_3_address1_local = zext_ln108_2_fu_618_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd6)) begin
            W_3_address1_local = zext_ln108_fu_564_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_354)) begin
        if ((trunc_ln106_1_reg_871 == 3'd4)) begin
            W_4_address1_local = zext_ln108_3_fu_646_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd2)) begin
            W_4_address1_local = zext_ln108_2_fu_618_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd7)) begin
            W_4_address1_local = zext_ln108_fu_564_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_354)) begin
        if ((trunc_ln106_1_reg_871 == 3'd5)) begin
            W_5_address1_local = zext_ln108_3_fu_646_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd3)) begin
            W_5_address1_local = zext_ln108_2_fu_618_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd0)) begin
            W_5_address1_local = zext_ln108_fu_564_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_354)) begin
        if ((trunc_ln106_1_reg_871 == 3'd6)) begin
            W_6_address1_local = zext_ln108_3_fu_646_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd4)) begin
            W_6_address1_local = zext_ln108_2_fu_618_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd1)) begin
            W_6_address1_local = zext_ln108_fu_564_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_354)) begin
        if ((trunc_ln106_1_reg_871 == 3'd7)) begin
            W_7_address1_local = zext_ln108_3_fu_646_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd5)) begin
            W_7_address1_local = zext_ln108_2_fu_618_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd2)) begin
            W_7_address1_local = zext_ln108_fu_564_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_354)) begin
        if ((trunc_ln106_1_reg_871 == 3'd0)) begin
            W_address1_local = zext_ln108_3_fu_646_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd6)) begin
            W_address1_local = zext_ln108_2_fu_618_p1;
        end else if ((trunc_ln106_1_reg_871 == 3'd3)) begin
            W_address1_local = zext_ln108_fu_564_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_871_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_516_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_3 = i_fu_80;
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
assign W_1_address0 = zext_ln99_fu_658_p1;
assign W_1_address1 = W_1_address1_local;
assign W_1_address2 = zext_ln108_1_fu_591_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_ce2 = W_1_ce2_local;
assign W_1_d0 = xor_ln108_2_fu_837_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = zext_ln99_fu_658_p1;
assign W_2_address1 = W_2_address1_local;
assign W_2_address2 = zext_ln108_1_fu_591_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_ce2 = W_2_ce2_local;
assign W_2_d0 = xor_ln108_2_fu_837_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = zext_ln99_fu_658_p1;
assign W_3_address1 = W_3_address1_local;
assign W_3_address2 = zext_ln108_1_fu_591_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_ce2 = W_3_ce2_local;
assign W_3_d0 = xor_ln108_2_fu_837_p2;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = zext_ln99_fu_658_p1;
assign W_4_address1 = W_4_address1_local;
assign W_4_address2 = zext_ln108_1_fu_591_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_4_ce2 = W_4_ce2_local;
assign W_4_d0 = xor_ln108_2_fu_837_p2;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = zext_ln99_fu_658_p1;
assign W_5_address1 = W_5_address1_local;
assign W_5_address2 = zext_ln108_1_fu_591_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_5_ce2 = W_5_ce2_local;
assign W_5_d0 = xor_ln108_2_fu_837_p2;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = zext_ln99_fu_658_p1;
assign W_6_address1 = W_6_address1_local;
assign W_6_address2 = zext_ln108_1_fu_591_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_6_ce2 = W_6_ce2_local;
assign W_6_d0 = xor_ln108_2_fu_837_p2;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = zext_ln99_fu_658_p1;
assign W_7_address1 = W_7_address1_local;
assign W_7_address2 = zext_ln108_1_fu_591_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_ce2 = W_7_ce2_local;
assign W_7_d0 = xor_ln108_2_fu_837_p2;
assign W_7_we0 = W_7_we0_local;
assign W_address0 = zext_ln99_fu_658_p1;
assign W_address1 = W_address1_local;
assign W_address2 = zext_ln108_1_fu_591_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_ce2 = W_ce2_local;
assign W_d0 = xor_ln108_2_fu_837_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_526_p2 = (ap_sig_allocacmp_i_3 + 7'd1);
assign add_ln108_1_fu_576_p2 = ($signed(i_3_reg_858) + $signed(7'd120));
assign add_ln108_2_fu_603_p2 = ($signed(i_3_reg_858) + $signed(7'd114));
assign add_ln108_3_fu_630_p2 = ($signed(trunc_ln106_fu_537_p1) + $signed(6'd48));
assign add_ln108_fu_549_p2 = ($signed(i_3_reg_858) + $signed(7'd125));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_354 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_516_p2 = ((ap_sig_allocacmp_i_3 == 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_581_p4 = {{add_ln108_1_fu_576_p2[6:3]}};
assign lshr_ln108_2_fu_608_p4 = {{add_ln108_2_fu_603_p2[6:3]}};
assign lshr_ln108_3_fu_636_p4 = {{add_ln108_3_fu_630_p2[5:3]}};
assign lshr_ln1_fu_554_p4 = {{add_ln108_fu_549_p2[6:3]}};
assign tmp_2_fu_708_p17 = 'bx;
assign tmp_3_fu_747_p17 = 'bx;
assign tmp_4_fu_786_p17 = 'bx;
assign tmp_fu_669_p17 = 'bx;
assign trunc_ln106_1_fu_522_p1 = ap_sig_allocacmp_i_3[2:0];
assign trunc_ln106_fu_537_p1 = i_3_reg_858[5:0];
assign xor_ln108_1_fu_831_p2 = (tmp_4_fu_786_p19 ^ tmp_2_fu_708_p19);
assign xor_ln108_2_fu_837_p2 = (xor_ln108_fu_825_p2 ^ xor_ln108_1_fu_831_p2);
assign xor_ln108_fu_825_p2 = (tmp_fu_669_p19 ^ tmp_3_fu_747_p19);
assign zext_ln108_1_fu_591_p1 = lshr_ln108_1_fu_581_p4;
assign zext_ln108_2_fu_618_p1 = lshr_ln108_2_fu_608_p4;
assign zext_ln108_3_fu_646_p1 = lshr_ln108_3_fu_636_p4;
assign zext_ln108_fu_564_p1 = lshr_ln1_fu_554_p4;
assign zext_ln99_fu_658_p1 = lshr_ln_reg_879;
endmodule 
