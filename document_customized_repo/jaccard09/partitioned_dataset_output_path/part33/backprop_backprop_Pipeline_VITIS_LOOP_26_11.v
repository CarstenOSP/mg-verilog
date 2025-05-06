
module backprop_backprop_Pipeline_VITIS_LOOP_26_11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations2_7_address0,activations2_7_ce0,activations2_7_we0,activations2_7_d0,activations2_7_address1,activations2_7_ce1,activations2_7_q1,activations2_6_address0,activations2_6_ce0,activations2_6_we0,activations2_6_d0,activations2_6_address1,activations2_6_ce1,activations2_6_q1,activations2_5_address0,activations2_5_ce0,activations2_5_we0,activations2_5_d0,activations2_5_address1,activations2_5_ce1,activations2_5_q1,activations2_4_address0,activations2_4_ce0,activations2_4_we0,activations2_4_d0,activations2_4_address1,activations2_4_ce1,activations2_4_q1,activations2_3_address0,activations2_3_ce0,activations2_3_we0,activations2_3_d0,activations2_3_address1,activations2_3_ce1,activations2_3_q1,activations2_2_address0,activations2_2_ce0,activations2_2_we0,activations2_2_d0,activations2_2_address1,activations2_2_ce1,activations2_2_q1,activations2_1_address0,activations2_1_ce0,activations2_1_we0,activations2_1_d0,activations2_1_address1,activations2_1_ce1,activations2_1_q1,activations2_address0,activations2_ce0,activations2_we0,activations2_d0,activations2_address1,activations2_ce1,activations2_q1,biases2_0_address0,biases2_0_ce0,biases2_0_q0,biases2_1_address0,biases2_1_ce0,biases2_1_q0,biases2_2_address0,biases2_2_ce0,biases2_2_q0,biases2_3_address0,biases2_3_ce0,biases2_3_q0,biases2_4_address0,biases2_4_ce0,biases2_4_q0,biases2_5_address0,biases2_5_ce0,biases2_5_q0,biases2_6_address0,biases2_6_ce0,biases2_6_q0,biases2_7_address0,biases2_7_ce0,biases2_7_q0,grp_fu_8514_p_din0,grp_fu_8514_p_din1,grp_fu_8514_p_opcode,grp_fu_8514_p_dout0,grp_fu_8514_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] activations2_7_address0;
output   activations2_7_ce0;
output   activations2_7_we0;
output  [63:0] activations2_7_d0;
output  [2:0] activations2_7_address1;
output   activations2_7_ce1;
input  [63:0] activations2_7_q1;
output  [2:0] activations2_6_address0;
output   activations2_6_ce0;
output   activations2_6_we0;
output  [63:0] activations2_6_d0;
output  [2:0] activations2_6_address1;
output   activations2_6_ce1;
input  [63:0] activations2_6_q1;
output  [2:0] activations2_5_address0;
output   activations2_5_ce0;
output   activations2_5_we0;
output  [63:0] activations2_5_d0;
output  [2:0] activations2_5_address1;
output   activations2_5_ce1;
input  [63:0] activations2_5_q1;
output  [2:0] activations2_4_address0;
output   activations2_4_ce0;
output   activations2_4_we0;
output  [63:0] activations2_4_d0;
output  [2:0] activations2_4_address1;
output   activations2_4_ce1;
input  [63:0] activations2_4_q1;
output  [2:0] activations2_3_address0;
output   activations2_3_ce0;
output   activations2_3_we0;
output  [63:0] activations2_3_d0;
output  [2:0] activations2_3_address1;
output   activations2_3_ce1;
input  [63:0] activations2_3_q1;
output  [2:0] activations2_2_address0;
output   activations2_2_ce0;
output   activations2_2_we0;
output  [63:0] activations2_2_d0;
output  [2:0] activations2_2_address1;
output   activations2_2_ce1;
input  [63:0] activations2_2_q1;
output  [2:0] activations2_1_address0;
output   activations2_1_ce0;
output   activations2_1_we0;
output  [63:0] activations2_1_d0;
output  [2:0] activations2_1_address1;
output   activations2_1_ce1;
input  [63:0] activations2_1_q1;
output  [2:0] activations2_address0;
output   activations2_ce0;
output   activations2_we0;
output  [63:0] activations2_d0;
output  [2:0] activations2_address1;
output   activations2_ce1;
input  [63:0] activations2_q1;
output  [2:0] biases2_0_address0;
output   biases2_0_ce0;
input  [63:0] biases2_0_q0;
output  [2:0] biases2_1_address0;
output   biases2_1_ce0;
input  [63:0] biases2_1_q0;
output  [2:0] biases2_2_address0;
output   biases2_2_ce0;
input  [63:0] biases2_2_q0;
output  [2:0] biases2_3_address0;
output   biases2_3_ce0;
input  [63:0] biases2_3_q0;
output  [2:0] biases2_4_address0;
output   biases2_4_ce0;
input  [63:0] biases2_4_q0;
output  [2:0] biases2_5_address0;
output   biases2_5_ce0;
input  [63:0] biases2_5_q0;
output  [2:0] biases2_6_address0;
output   biases2_6_ce0;
input  [63:0] biases2_6_q0;
output  [2:0] biases2_7_address0;
output   biases2_7_ce0;
input  [63:0] biases2_7_q0;
output  [63:0] grp_fu_8514_p_din0;
output  [63:0] grp_fu_8514_p_din1;
output  [0:0] grp_fu_8514_p_opcode;
input  [63:0] grp_fu_8514_p_dout0;
output   grp_fu_8514_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln26_fu_344_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln26_fu_356_p1;
reg   [2:0] trunc_ln26_reg_516;
reg   [2:0] trunc_ln26_reg_516_pp0_iter1_reg;
reg   [2:0] trunc_ln26_reg_516_pp0_iter2_reg;
reg   [2:0] trunc_ln26_reg_516_pp0_iter3_reg;
reg   [2:0] trunc_ln26_reg_516_pp0_iter4_reg;
reg   [2:0] trunc_ln26_reg_516_pp0_iter5_reg;
reg   [2:0] trunc_ln26_reg_516_pp0_iter6_reg;
reg   [2:0] trunc_ln26_reg_516_pp0_iter7_reg;
reg   [2:0] trunc_ln26_reg_516_pp0_iter8_reg;
reg   [2:0] trunc_ln26_reg_516_pp0_iter9_reg;
reg   [2:0] activations2_addr_reg_522;
reg   [2:0] activations2_addr_reg_522_pp0_iter1_reg;
reg   [2:0] activations2_addr_reg_522_pp0_iter2_reg;
reg   [2:0] activations2_addr_reg_522_pp0_iter3_reg;
reg   [2:0] activations2_addr_reg_522_pp0_iter4_reg;
reg   [2:0] activations2_addr_reg_522_pp0_iter5_reg;
reg   [2:0] activations2_addr_reg_522_pp0_iter6_reg;
reg   [2:0] activations2_addr_reg_522_pp0_iter7_reg;
reg   [2:0] activations2_addr_reg_522_pp0_iter8_reg;
reg   [2:0] activations2_addr_reg_522_pp0_iter9_reg;
reg   [2:0] activations2_1_addr_reg_528;
reg   [2:0] activations2_1_addr_reg_528_pp0_iter1_reg;
reg   [2:0] activations2_1_addr_reg_528_pp0_iter2_reg;
reg   [2:0] activations2_1_addr_reg_528_pp0_iter3_reg;
reg   [2:0] activations2_1_addr_reg_528_pp0_iter4_reg;
reg   [2:0] activations2_1_addr_reg_528_pp0_iter5_reg;
reg   [2:0] activations2_1_addr_reg_528_pp0_iter6_reg;
reg   [2:0] activations2_1_addr_reg_528_pp0_iter7_reg;
reg   [2:0] activations2_1_addr_reg_528_pp0_iter8_reg;
reg   [2:0] activations2_1_addr_reg_528_pp0_iter9_reg;
reg   [2:0] activations2_2_addr_reg_534;
reg   [2:0] activations2_2_addr_reg_534_pp0_iter1_reg;
reg   [2:0] activations2_2_addr_reg_534_pp0_iter2_reg;
reg   [2:0] activations2_2_addr_reg_534_pp0_iter3_reg;
reg   [2:0] activations2_2_addr_reg_534_pp0_iter4_reg;
reg   [2:0] activations2_2_addr_reg_534_pp0_iter5_reg;
reg   [2:0] activations2_2_addr_reg_534_pp0_iter6_reg;
reg   [2:0] activations2_2_addr_reg_534_pp0_iter7_reg;
reg   [2:0] activations2_2_addr_reg_534_pp0_iter8_reg;
reg   [2:0] activations2_2_addr_reg_534_pp0_iter9_reg;
reg   [2:0] activations2_3_addr_reg_540;
reg   [2:0] activations2_3_addr_reg_540_pp0_iter1_reg;
reg   [2:0] activations2_3_addr_reg_540_pp0_iter2_reg;
reg   [2:0] activations2_3_addr_reg_540_pp0_iter3_reg;
reg   [2:0] activations2_3_addr_reg_540_pp0_iter4_reg;
reg   [2:0] activations2_3_addr_reg_540_pp0_iter5_reg;
reg   [2:0] activations2_3_addr_reg_540_pp0_iter6_reg;
reg   [2:0] activations2_3_addr_reg_540_pp0_iter7_reg;
reg   [2:0] activations2_3_addr_reg_540_pp0_iter8_reg;
reg   [2:0] activations2_3_addr_reg_540_pp0_iter9_reg;
reg   [2:0] activations2_4_addr_reg_546;
reg   [2:0] activations2_4_addr_reg_546_pp0_iter1_reg;
reg   [2:0] activations2_4_addr_reg_546_pp0_iter2_reg;
reg   [2:0] activations2_4_addr_reg_546_pp0_iter3_reg;
reg   [2:0] activations2_4_addr_reg_546_pp0_iter4_reg;
reg   [2:0] activations2_4_addr_reg_546_pp0_iter5_reg;
reg   [2:0] activations2_4_addr_reg_546_pp0_iter6_reg;
reg   [2:0] activations2_4_addr_reg_546_pp0_iter7_reg;
reg   [2:0] activations2_4_addr_reg_546_pp0_iter8_reg;
reg   [2:0] activations2_4_addr_reg_546_pp0_iter9_reg;
reg   [2:0] activations2_5_addr_reg_552;
reg   [2:0] activations2_5_addr_reg_552_pp0_iter1_reg;
reg   [2:0] activations2_5_addr_reg_552_pp0_iter2_reg;
reg   [2:0] activations2_5_addr_reg_552_pp0_iter3_reg;
reg   [2:0] activations2_5_addr_reg_552_pp0_iter4_reg;
reg   [2:0] activations2_5_addr_reg_552_pp0_iter5_reg;
reg   [2:0] activations2_5_addr_reg_552_pp0_iter6_reg;
reg   [2:0] activations2_5_addr_reg_552_pp0_iter7_reg;
reg   [2:0] activations2_5_addr_reg_552_pp0_iter8_reg;
reg   [2:0] activations2_5_addr_reg_552_pp0_iter9_reg;
reg   [2:0] activations2_6_addr_reg_558;
reg   [2:0] activations2_6_addr_reg_558_pp0_iter1_reg;
reg   [2:0] activations2_6_addr_reg_558_pp0_iter2_reg;
reg   [2:0] activations2_6_addr_reg_558_pp0_iter3_reg;
reg   [2:0] activations2_6_addr_reg_558_pp0_iter4_reg;
reg   [2:0] activations2_6_addr_reg_558_pp0_iter5_reg;
reg   [2:0] activations2_6_addr_reg_558_pp0_iter6_reg;
reg   [2:0] activations2_6_addr_reg_558_pp0_iter7_reg;
reg   [2:0] activations2_6_addr_reg_558_pp0_iter8_reg;
reg   [2:0] activations2_6_addr_reg_558_pp0_iter9_reg;
reg   [2:0] activations2_7_addr_reg_564;
reg   [2:0] activations2_7_addr_reg_564_pp0_iter1_reg;
reg   [2:0] activations2_7_addr_reg_564_pp0_iter2_reg;
reg   [2:0] activations2_7_addr_reg_564_pp0_iter3_reg;
reg   [2:0] activations2_7_addr_reg_564_pp0_iter4_reg;
reg   [2:0] activations2_7_addr_reg_564_pp0_iter5_reg;
reg   [2:0] activations2_7_addr_reg_564_pp0_iter6_reg;
reg   [2:0] activations2_7_addr_reg_564_pp0_iter7_reg;
reg   [2:0] activations2_7_addr_reg_564_pp0_iter8_reg;
reg   [2:0] activations2_7_addr_reg_564_pp0_iter9_reg;
wire   [63:0] tmp_s_fu_395_p19;
reg   [63:0] tmp_s_reg_610;
wire   [63:0] tmp_23_fu_466_p19;
reg   [63:0] tmp_23_reg_615;
reg   [63:0] add_i_i1_reg_620;
wire   [63:0] zext_ln25_fu_370_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_88;
wire   [6:0] add_ln26_fu_350_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_11;
reg    activations2_ce1_local;
reg    activations2_we0_local;
reg    activations2_ce0_local;
reg    activations2_1_ce1_local;
reg    activations2_1_we0_local;
reg    activations2_1_ce0_local;
reg    activations2_2_ce1_local;
reg    activations2_2_we0_local;
reg    activations2_2_ce0_local;
reg    activations2_3_ce1_local;
reg    activations2_3_we0_local;
reg    activations2_3_ce0_local;
reg    activations2_4_ce1_local;
reg    activations2_4_we0_local;
reg    activations2_4_ce0_local;
reg    activations2_5_ce1_local;
reg    activations2_5_we0_local;
reg    activations2_5_ce0_local;
reg    activations2_6_ce1_local;
reg    activations2_6_we0_local;
reg    activations2_6_ce0_local;
reg    activations2_7_ce1_local;
reg    activations2_7_we0_local;
reg    activations2_7_ce0_local;
reg    biases2_0_ce0_local;
reg    biases2_1_ce0_local;
reg    biases2_2_ce0_local;
reg    biases2_3_ce0_local;
reg    biases2_4_ce0_local;
reg    biases2_5_ce0_local;
reg    biases2_6_ce0_local;
reg    biases2_7_ce0_local;
wire   [2:0] lshr_ln25_1_fu_360_p4;
wire   [63:0] tmp_s_fu_395_p17;
wire   [63:0] tmp_23_fu_466_p2;
wire   [63:0] tmp_23_fu_466_p4;
wire   [63:0] tmp_23_fu_466_p6;
wire   [63:0] tmp_23_fu_466_p8;
wire   [63:0] tmp_23_fu_466_p10;
wire   [63:0] tmp_23_fu_466_p12;
wire   [63:0] tmp_23_fu_466_p14;
wire   [63:0] tmp_23_fu_466_p16;
wire   [63:0] tmp_23_fu_466_p17;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_s_fu_395_p1;
wire   [2:0] tmp_s_fu_395_p3;
wire   [2:0] tmp_s_fu_395_p5;
wire   [2:0] tmp_s_fu_395_p7;
wire  signed [2:0] tmp_s_fu_395_p9;
wire  signed [2:0] tmp_s_fu_395_p11;
wire  signed [2:0] tmp_s_fu_395_p13;
wire  signed [2:0] tmp_s_fu_395_p15;
wire   [2:0] tmp_23_fu_466_p1;
wire   [2:0] tmp_23_fu_466_p3;
wire   [2:0] tmp_23_fu_466_p5;
wire   [2:0] tmp_23_fu_466_p7;
wire  signed [2:0] tmp_23_fu_466_p9;
wire  signed [2:0] tmp_23_fu_466_p11;
wire  signed [2:0] tmp_23_fu_466_p13;
wire  signed [2:0] tmp_23_fu_466_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 i_fu_88 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U232(.din0(activations2_q1),.din1(activations2_1_q1),.din2(activations2_2_q1),.din3(activations2_3_q1),.din4(activations2_4_q1),.din5(activations2_5_q1),.din6(activations2_6_q1),.din7(activations2_7_q1),.def(tmp_s_fu_395_p17),.sel(trunc_ln26_reg_516),.dout(tmp_s_fu_395_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U233(.din0(tmp_23_fu_466_p2),.din1(tmp_23_fu_466_p4),.din2(tmp_23_fu_466_p6),.din3(tmp_23_fu_466_p8),.din4(tmp_23_fu_466_p10),.din5(tmp_23_fu_466_p12),.din6(tmp_23_fu_466_p14),.din7(tmp_23_fu_466_p16),.def(tmp_23_fu_466_p17),.sel(trunc_ln26_reg_516),.dout(tmp_23_fu_466_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_344_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_88 <= add_ln26_fu_350_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_88 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_addr_reg_528 <= zext_ln25_fu_370_p1;
        activations2_1_addr_reg_528_pp0_iter1_reg <= activations2_1_addr_reg_528;
        activations2_2_addr_reg_534 <= zext_ln25_fu_370_p1;
        activations2_2_addr_reg_534_pp0_iter1_reg <= activations2_2_addr_reg_534;
        activations2_3_addr_reg_540 <= zext_ln25_fu_370_p1;
        activations2_3_addr_reg_540_pp0_iter1_reg <= activations2_3_addr_reg_540;
        activations2_4_addr_reg_546 <= zext_ln25_fu_370_p1;
        activations2_4_addr_reg_546_pp0_iter1_reg <= activations2_4_addr_reg_546;
        activations2_5_addr_reg_552 <= zext_ln25_fu_370_p1;
        activations2_5_addr_reg_552_pp0_iter1_reg <= activations2_5_addr_reg_552;
        activations2_6_addr_reg_558 <= zext_ln25_fu_370_p1;
        activations2_6_addr_reg_558_pp0_iter1_reg <= activations2_6_addr_reg_558;
        activations2_7_addr_reg_564 <= zext_ln25_fu_370_p1;
        activations2_7_addr_reg_564_pp0_iter1_reg <= activations2_7_addr_reg_564;
        activations2_addr_reg_522 <= zext_ln25_fu_370_p1;
        activations2_addr_reg_522_pp0_iter1_reg <= activations2_addr_reg_522;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_23_reg_615 <= tmp_23_fu_466_p19;
        tmp_s_reg_610 <= tmp_s_fu_395_p19;
        trunc_ln26_reg_516 <= trunc_ln26_fu_356_p1;
        trunc_ln26_reg_516_pp0_iter1_reg <= trunc_ln26_reg_516;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        activations2_1_addr_reg_528_pp0_iter2_reg <= activations2_1_addr_reg_528_pp0_iter1_reg;
        activations2_1_addr_reg_528_pp0_iter3_reg <= activations2_1_addr_reg_528_pp0_iter2_reg;
        activations2_1_addr_reg_528_pp0_iter4_reg <= activations2_1_addr_reg_528_pp0_iter3_reg;
        activations2_1_addr_reg_528_pp0_iter5_reg <= activations2_1_addr_reg_528_pp0_iter4_reg;
        activations2_1_addr_reg_528_pp0_iter6_reg <= activations2_1_addr_reg_528_pp0_iter5_reg;
        activations2_1_addr_reg_528_pp0_iter7_reg <= activations2_1_addr_reg_528_pp0_iter6_reg;
        activations2_1_addr_reg_528_pp0_iter8_reg <= activations2_1_addr_reg_528_pp0_iter7_reg;
        activations2_1_addr_reg_528_pp0_iter9_reg <= activations2_1_addr_reg_528_pp0_iter8_reg;
        activations2_2_addr_reg_534_pp0_iter2_reg <= activations2_2_addr_reg_534_pp0_iter1_reg;
        activations2_2_addr_reg_534_pp0_iter3_reg <= activations2_2_addr_reg_534_pp0_iter2_reg;
        activations2_2_addr_reg_534_pp0_iter4_reg <= activations2_2_addr_reg_534_pp0_iter3_reg;
        activations2_2_addr_reg_534_pp0_iter5_reg <= activations2_2_addr_reg_534_pp0_iter4_reg;
        activations2_2_addr_reg_534_pp0_iter6_reg <= activations2_2_addr_reg_534_pp0_iter5_reg;
        activations2_2_addr_reg_534_pp0_iter7_reg <= activations2_2_addr_reg_534_pp0_iter6_reg;
        activations2_2_addr_reg_534_pp0_iter8_reg <= activations2_2_addr_reg_534_pp0_iter7_reg;
        activations2_2_addr_reg_534_pp0_iter9_reg <= activations2_2_addr_reg_534_pp0_iter8_reg;
        activations2_3_addr_reg_540_pp0_iter2_reg <= activations2_3_addr_reg_540_pp0_iter1_reg;
        activations2_3_addr_reg_540_pp0_iter3_reg <= activations2_3_addr_reg_540_pp0_iter2_reg;
        activations2_3_addr_reg_540_pp0_iter4_reg <= activations2_3_addr_reg_540_pp0_iter3_reg;
        activations2_3_addr_reg_540_pp0_iter5_reg <= activations2_3_addr_reg_540_pp0_iter4_reg;
        activations2_3_addr_reg_540_pp0_iter6_reg <= activations2_3_addr_reg_540_pp0_iter5_reg;
        activations2_3_addr_reg_540_pp0_iter7_reg <= activations2_3_addr_reg_540_pp0_iter6_reg;
        activations2_3_addr_reg_540_pp0_iter8_reg <= activations2_3_addr_reg_540_pp0_iter7_reg;
        activations2_3_addr_reg_540_pp0_iter9_reg <= activations2_3_addr_reg_540_pp0_iter8_reg;
        activations2_4_addr_reg_546_pp0_iter2_reg <= activations2_4_addr_reg_546_pp0_iter1_reg;
        activations2_4_addr_reg_546_pp0_iter3_reg <= activations2_4_addr_reg_546_pp0_iter2_reg;
        activations2_4_addr_reg_546_pp0_iter4_reg <= activations2_4_addr_reg_546_pp0_iter3_reg;
        activations2_4_addr_reg_546_pp0_iter5_reg <= activations2_4_addr_reg_546_pp0_iter4_reg;
        activations2_4_addr_reg_546_pp0_iter6_reg <= activations2_4_addr_reg_546_pp0_iter5_reg;
        activations2_4_addr_reg_546_pp0_iter7_reg <= activations2_4_addr_reg_546_pp0_iter6_reg;
        activations2_4_addr_reg_546_pp0_iter8_reg <= activations2_4_addr_reg_546_pp0_iter7_reg;
        activations2_4_addr_reg_546_pp0_iter9_reg <= activations2_4_addr_reg_546_pp0_iter8_reg;
        activations2_5_addr_reg_552_pp0_iter2_reg <= activations2_5_addr_reg_552_pp0_iter1_reg;
        activations2_5_addr_reg_552_pp0_iter3_reg <= activations2_5_addr_reg_552_pp0_iter2_reg;
        activations2_5_addr_reg_552_pp0_iter4_reg <= activations2_5_addr_reg_552_pp0_iter3_reg;
        activations2_5_addr_reg_552_pp0_iter5_reg <= activations2_5_addr_reg_552_pp0_iter4_reg;
        activations2_5_addr_reg_552_pp0_iter6_reg <= activations2_5_addr_reg_552_pp0_iter5_reg;
        activations2_5_addr_reg_552_pp0_iter7_reg <= activations2_5_addr_reg_552_pp0_iter6_reg;
        activations2_5_addr_reg_552_pp0_iter8_reg <= activations2_5_addr_reg_552_pp0_iter7_reg;
        activations2_5_addr_reg_552_pp0_iter9_reg <= activations2_5_addr_reg_552_pp0_iter8_reg;
        activations2_6_addr_reg_558_pp0_iter2_reg <= activations2_6_addr_reg_558_pp0_iter1_reg;
        activations2_6_addr_reg_558_pp0_iter3_reg <= activations2_6_addr_reg_558_pp0_iter2_reg;
        activations2_6_addr_reg_558_pp0_iter4_reg <= activations2_6_addr_reg_558_pp0_iter3_reg;
        activations2_6_addr_reg_558_pp0_iter5_reg <= activations2_6_addr_reg_558_pp0_iter4_reg;
        activations2_6_addr_reg_558_pp0_iter6_reg <= activations2_6_addr_reg_558_pp0_iter5_reg;
        activations2_6_addr_reg_558_pp0_iter7_reg <= activations2_6_addr_reg_558_pp0_iter6_reg;
        activations2_6_addr_reg_558_pp0_iter8_reg <= activations2_6_addr_reg_558_pp0_iter7_reg;
        activations2_6_addr_reg_558_pp0_iter9_reg <= activations2_6_addr_reg_558_pp0_iter8_reg;
        activations2_7_addr_reg_564_pp0_iter2_reg <= activations2_7_addr_reg_564_pp0_iter1_reg;
        activations2_7_addr_reg_564_pp0_iter3_reg <= activations2_7_addr_reg_564_pp0_iter2_reg;
        activations2_7_addr_reg_564_pp0_iter4_reg <= activations2_7_addr_reg_564_pp0_iter3_reg;
        activations2_7_addr_reg_564_pp0_iter5_reg <= activations2_7_addr_reg_564_pp0_iter4_reg;
        activations2_7_addr_reg_564_pp0_iter6_reg <= activations2_7_addr_reg_564_pp0_iter5_reg;
        activations2_7_addr_reg_564_pp0_iter7_reg <= activations2_7_addr_reg_564_pp0_iter6_reg;
        activations2_7_addr_reg_564_pp0_iter8_reg <= activations2_7_addr_reg_564_pp0_iter7_reg;
        activations2_7_addr_reg_564_pp0_iter9_reg <= activations2_7_addr_reg_564_pp0_iter8_reg;
        activations2_addr_reg_522_pp0_iter2_reg <= activations2_addr_reg_522_pp0_iter1_reg;
        activations2_addr_reg_522_pp0_iter3_reg <= activations2_addr_reg_522_pp0_iter2_reg;
        activations2_addr_reg_522_pp0_iter4_reg <= activations2_addr_reg_522_pp0_iter3_reg;
        activations2_addr_reg_522_pp0_iter5_reg <= activations2_addr_reg_522_pp0_iter4_reg;
        activations2_addr_reg_522_pp0_iter6_reg <= activations2_addr_reg_522_pp0_iter5_reg;
        activations2_addr_reg_522_pp0_iter7_reg <= activations2_addr_reg_522_pp0_iter6_reg;
        activations2_addr_reg_522_pp0_iter8_reg <= activations2_addr_reg_522_pp0_iter7_reg;
        activations2_addr_reg_522_pp0_iter9_reg <= activations2_addr_reg_522_pp0_iter8_reg;
        add_i_i1_reg_620 <= grp_fu_8514_p_dout0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        trunc_ln26_reg_516_pp0_iter2_reg <= trunc_ln26_reg_516_pp0_iter1_reg;
        trunc_ln26_reg_516_pp0_iter3_reg <= trunc_ln26_reg_516_pp0_iter2_reg;
        trunc_ln26_reg_516_pp0_iter4_reg <= trunc_ln26_reg_516_pp0_iter3_reg;
        trunc_ln26_reg_516_pp0_iter5_reg <= trunc_ln26_reg_516_pp0_iter4_reg;
        trunc_ln26_reg_516_pp0_iter6_reg <= trunc_ln26_reg_516_pp0_iter5_reg;
        trunc_ln26_reg_516_pp0_iter7_reg <= trunc_ln26_reg_516_pp0_iter6_reg;
        trunc_ln26_reg_516_pp0_iter8_reg <= trunc_ln26_reg_516_pp0_iter7_reg;
        trunc_ln26_reg_516_pp0_iter9_reg <= trunc_ln26_reg_516_pp0_iter8_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce1_local = 1'b1;
    end else begin
        activations2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_516_pp0_iter9_reg == 3'd1))) begin
        activations2_1_we0_local = 1'b1;
    end else begin
        activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_2_ce1_local = 1'b1;
    end else begin
        activations2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_516_pp0_iter9_reg == 3'd2))) begin
        activations2_2_we0_local = 1'b1;
    end else begin
        activations2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce1_local = 1'b1;
    end else begin
        activations2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_516_pp0_iter9_reg == 3'd3))) begin
        activations2_3_we0_local = 1'b1;
    end else begin
        activations2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_4_ce0_local = 1'b1;
    end else begin
        activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_4_ce1_local = 1'b1;
    end else begin
        activations2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_516_pp0_iter9_reg == 3'd4))) begin
        activations2_4_we0_local = 1'b1;
    end else begin
        activations2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_5_ce0_local = 1'b1;
    end else begin
        activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_5_ce1_local = 1'b1;
    end else begin
        activations2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_516_pp0_iter9_reg == 3'd5))) begin
        activations2_5_we0_local = 1'b1;
    end else begin
        activations2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_6_ce0_local = 1'b1;
    end else begin
        activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_6_ce1_local = 1'b1;
    end else begin
        activations2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_516_pp0_iter9_reg == 3'd6))) begin
        activations2_6_we0_local = 1'b1;
    end else begin
        activations2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_7_ce0_local = 1'b1;
    end else begin
        activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_7_ce1_local = 1'b1;
    end else begin
        activations2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_516_pp0_iter9_reg == 3'd7))) begin
        activations2_7_we0_local = 1'b1;
    end else begin
        activations2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce1_local = 1'b1;
    end else begin
        activations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_516_pp0_iter9_reg == 3'd0))) begin
        activations2_we0_local = 1'b1;
    end else begin
        activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_344_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_11 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_ce0_local = 1'b1;
    end else begin
        biases2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_1_ce0_local = 1'b1;
    end else begin
        biases2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_2_ce0_local = 1'b1;
    end else begin
        biases2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_3_ce0_local = 1'b1;
    end else begin
        biases2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_4_ce0_local = 1'b1;
    end else begin
        biases2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_5_ce0_local = 1'b1;
    end else begin
        biases2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_6_ce0_local = 1'b1;
    end else begin
        biases2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_7_ce0_local = 1'b1;
    end else begin
        biases2_7_ce0_local = 1'b0;
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
assign activations2_1_address0 = activations2_1_addr_reg_528_pp0_iter9_reg;
assign activations2_1_address1 = zext_ln25_fu_370_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_1_ce1 = activations2_1_ce1_local;
assign activations2_1_d0 = add_i_i1_reg_620;
assign activations2_1_we0 = activations2_1_we0_local;
assign activations2_2_address0 = activations2_2_addr_reg_534_pp0_iter9_reg;
assign activations2_2_address1 = zext_ln25_fu_370_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_2_ce1 = activations2_2_ce1_local;
assign activations2_2_d0 = add_i_i1_reg_620;
assign activations2_2_we0 = activations2_2_we0_local;
assign activations2_3_address0 = activations2_3_addr_reg_540_pp0_iter9_reg;
assign activations2_3_address1 = zext_ln25_fu_370_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_3_ce1 = activations2_3_ce1_local;
assign activations2_3_d0 = add_i_i1_reg_620;
assign activations2_3_we0 = activations2_3_we0_local;
assign activations2_4_address0 = activations2_4_addr_reg_546_pp0_iter9_reg;
assign activations2_4_address1 = zext_ln25_fu_370_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_4_ce1 = activations2_4_ce1_local;
assign activations2_4_d0 = add_i_i1_reg_620;
assign activations2_4_we0 = activations2_4_we0_local;
assign activations2_5_address0 = activations2_5_addr_reg_552_pp0_iter9_reg;
assign activations2_5_address1 = zext_ln25_fu_370_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_5_ce1 = activations2_5_ce1_local;
assign activations2_5_d0 = add_i_i1_reg_620;
assign activations2_5_we0 = activations2_5_we0_local;
assign activations2_6_address0 = activations2_6_addr_reg_558_pp0_iter9_reg;
assign activations2_6_address1 = zext_ln25_fu_370_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_6_ce1 = activations2_6_ce1_local;
assign activations2_6_d0 = add_i_i1_reg_620;
assign activations2_6_we0 = activations2_6_we0_local;
assign activations2_7_address0 = activations2_7_addr_reg_564_pp0_iter9_reg;
assign activations2_7_address1 = zext_ln25_fu_370_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_7_ce1 = activations2_7_ce1_local;
assign activations2_7_d0 = add_i_i1_reg_620;
assign activations2_7_we0 = activations2_7_we0_local;
assign activations2_address0 = activations2_addr_reg_522_pp0_iter9_reg;
assign activations2_address1 = zext_ln25_fu_370_p1;
assign activations2_ce0 = activations2_ce0_local;
assign activations2_ce1 = activations2_ce1_local;
assign activations2_d0 = add_i_i1_reg_620;
assign activations2_we0 = activations2_we0_local;
assign add_ln26_fu_350_p2 = (ap_sig_allocacmp_i_11 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign biases2_0_address0 = zext_ln25_fu_370_p1;
assign biases2_0_ce0 = biases2_0_ce0_local;
assign biases2_1_address0 = zext_ln25_fu_370_p1;
assign biases2_1_ce0 = biases2_1_ce0_local;
assign biases2_2_address0 = zext_ln25_fu_370_p1;
assign biases2_2_ce0 = biases2_2_ce0_local;
assign biases2_3_address0 = zext_ln25_fu_370_p1;
assign biases2_3_ce0 = biases2_3_ce0_local;
assign biases2_4_address0 = zext_ln25_fu_370_p1;
assign biases2_4_ce0 = biases2_4_ce0_local;
assign biases2_5_address0 = zext_ln25_fu_370_p1;
assign biases2_5_ce0 = biases2_5_ce0_local;
assign biases2_6_address0 = zext_ln25_fu_370_p1;
assign biases2_6_ce0 = biases2_6_ce0_local;
assign biases2_7_address0 = zext_ln25_fu_370_p1;
assign biases2_7_ce0 = biases2_7_ce0_local;
assign grp_fu_8514_p_ce = 1'b1;
assign grp_fu_8514_p_din0 = tmp_s_reg_610;
assign grp_fu_8514_p_din1 = tmp_23_reg_615;
assign grp_fu_8514_p_opcode = 2'd0;
assign icmp_ln26_fu_344_p2 = ((ap_sig_allocacmp_i_11 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln25_1_fu_360_p4 = {{ap_sig_allocacmp_i_11[5:3]}};
assign tmp_23_fu_466_p10 = biases2_4_q0;
assign tmp_23_fu_466_p12 = biases2_5_q0;
assign tmp_23_fu_466_p14 = biases2_6_q0;
assign tmp_23_fu_466_p16 = biases2_7_q0;
assign tmp_23_fu_466_p17 = 'bx;
assign tmp_23_fu_466_p2 = biases2_0_q0;
assign tmp_23_fu_466_p4 = biases2_1_q0;
assign tmp_23_fu_466_p6 = biases2_2_q0;
assign tmp_23_fu_466_p8 = biases2_3_q0;
assign tmp_s_fu_395_p17 = 'bx;
assign trunc_ln26_fu_356_p1 = ap_sig_allocacmp_i_11[2:0];
assign zext_ln25_fu_370_p1 = lshr_ln25_1_fu_360_p4;
endmodule 
