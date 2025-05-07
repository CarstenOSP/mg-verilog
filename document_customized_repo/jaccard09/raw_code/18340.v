module backprop_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations_7_address0,activations_7_ce0,activations_7_we0,activations_7_d0,activations_7_address1,activations_7_ce1,activations_7_q1,activations_6_address0,activations_6_ce0,activations_6_we0,activations_6_d0,activations_6_address1,activations_6_ce1,activations_6_q1,activations_5_address0,activations_5_ce0,activations_5_we0,activations_5_d0,activations_5_address1,activations_5_ce1,activations_5_q1,activations_4_address0,activations_4_ce0,activations_4_we0,activations_4_d0,activations_4_address1,activations_4_ce1,activations_4_q1,activations_3_address0,activations_3_ce0,activations_3_we0,activations_3_d0,activations_3_address1,activations_3_ce1,activations_3_q1,activations_2_address0,activations_2_ce0,activations_2_we0,activations_2_d0,activations_2_address1,activations_2_ce1,activations_2_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_q1,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_q1,biases2_address0,biases2_ce0,biases2_q0,grp_fu_82_p_din0,grp_fu_82_p_din1,grp_fu_82_p_opcode,grp_fu_82_p_dout0,grp_fu_82_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] activations_7_address0;
output   activations_7_ce0;
output   activations_7_we0;
output  [63:0] activations_7_d0;
output  [2:0] activations_7_address1;
output   activations_7_ce1;
input  [63:0] activations_7_q1;
output  [2:0] activations_6_address0;
output   activations_6_ce0;
output   activations_6_we0;
output  [63:0] activations_6_d0;
output  [2:0] activations_6_address1;
output   activations_6_ce1;
input  [63:0] activations_6_q1;
output  [2:0] activations_5_address0;
output   activations_5_ce0;
output   activations_5_we0;
output  [63:0] activations_5_d0;
output  [2:0] activations_5_address1;
output   activations_5_ce1;
input  [63:0] activations_5_q1;
output  [2:0] activations_4_address0;
output   activations_4_ce0;
output   activations_4_we0;
output  [63:0] activations_4_d0;
output  [2:0] activations_4_address1;
output   activations_4_ce1;
input  [63:0] activations_4_q1;
output  [2:0] activations_3_address0;
output   activations_3_ce0;
output   activations_3_we0;
output  [63:0] activations_3_d0;
output  [2:0] activations_3_address1;
output   activations_3_ce1;
input  [63:0] activations_3_q1;
output  [2:0] activations_2_address0;
output   activations_2_ce0;
output   activations_2_we0;
output  [63:0] activations_2_d0;
output  [2:0] activations_2_address1;
output   activations_2_ce1;
input  [63:0] activations_2_q1;
output  [2:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [2:0] activations_1_address1;
output   activations_1_ce1;
input  [63:0] activations_1_q1;
output  [2:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [2:0] activations_0_address1;
output   activations_0_ce1;
input  [63:0] activations_0_q1;
output  [5:0] biases2_address0;
output   biases2_ce0;
input  [63:0] biases2_q0;
output  [63:0] grp_fu_82_p_din0;
output  [63:0] grp_fu_82_p_din1;
output  [0:0] grp_fu_82_p_opcode;
input  [63:0] grp_fu_82_p_dout0;
output   grp_fu_82_p_ce;
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
wire   [0:0] icmp_ln26_fu_239_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln26_fu_256_p1;
reg   [2:0] trunc_ln26_reg_341;
reg   [2:0] trunc_ln26_reg_341_pp0_iter1_reg;
reg   [2:0] trunc_ln26_reg_341_pp0_iter2_reg;
reg   [2:0] trunc_ln26_reg_341_pp0_iter3_reg;
reg   [2:0] trunc_ln26_reg_341_pp0_iter4_reg;
reg   [2:0] trunc_ln26_reg_341_pp0_iter5_reg;
reg   [2:0] trunc_ln26_reg_341_pp0_iter6_reg;
reg   [2:0] trunc_ln26_reg_341_pp0_iter7_reg;
reg   [2:0] trunc_ln26_reg_341_pp0_iter8_reg;
reg   [2:0] trunc_ln26_reg_341_pp0_iter9_reg;
reg   [2:0] activations_0_addr_reg_346;
reg   [2:0] activations_0_addr_reg_346_pp0_iter1_reg;
reg   [2:0] activations_0_addr_reg_346_pp0_iter2_reg;
reg   [2:0] activations_0_addr_reg_346_pp0_iter3_reg;
reg   [2:0] activations_0_addr_reg_346_pp0_iter4_reg;
reg   [2:0] activations_0_addr_reg_346_pp0_iter5_reg;
reg   [2:0] activations_0_addr_reg_346_pp0_iter6_reg;
reg   [2:0] activations_0_addr_reg_346_pp0_iter7_reg;
reg   [2:0] activations_0_addr_reg_346_pp0_iter8_reg;
reg   [2:0] activations_0_addr_reg_346_pp0_iter9_reg;
reg   [2:0] activations_1_addr_reg_352;
reg   [2:0] activations_1_addr_reg_352_pp0_iter1_reg;
reg   [2:0] activations_1_addr_reg_352_pp0_iter2_reg;
reg   [2:0] activations_1_addr_reg_352_pp0_iter3_reg;
reg   [2:0] activations_1_addr_reg_352_pp0_iter4_reg;
reg   [2:0] activations_1_addr_reg_352_pp0_iter5_reg;
reg   [2:0] activations_1_addr_reg_352_pp0_iter6_reg;
reg   [2:0] activations_1_addr_reg_352_pp0_iter7_reg;
reg   [2:0] activations_1_addr_reg_352_pp0_iter8_reg;
reg   [2:0] activations_1_addr_reg_352_pp0_iter9_reg;
reg   [2:0] activations_2_addr_reg_358;
reg   [2:0] activations_2_addr_reg_358_pp0_iter1_reg;
reg   [2:0] activations_2_addr_reg_358_pp0_iter2_reg;
reg   [2:0] activations_2_addr_reg_358_pp0_iter3_reg;
reg   [2:0] activations_2_addr_reg_358_pp0_iter4_reg;
reg   [2:0] activations_2_addr_reg_358_pp0_iter5_reg;
reg   [2:0] activations_2_addr_reg_358_pp0_iter6_reg;
reg   [2:0] activations_2_addr_reg_358_pp0_iter7_reg;
reg   [2:0] activations_2_addr_reg_358_pp0_iter8_reg;
reg   [2:0] activations_2_addr_reg_358_pp0_iter9_reg;
reg   [2:0] activations_3_addr_reg_364;
reg   [2:0] activations_3_addr_reg_364_pp0_iter1_reg;
reg   [2:0] activations_3_addr_reg_364_pp0_iter2_reg;
reg   [2:0] activations_3_addr_reg_364_pp0_iter3_reg;
reg   [2:0] activations_3_addr_reg_364_pp0_iter4_reg;
reg   [2:0] activations_3_addr_reg_364_pp0_iter5_reg;
reg   [2:0] activations_3_addr_reg_364_pp0_iter6_reg;
reg   [2:0] activations_3_addr_reg_364_pp0_iter7_reg;
reg   [2:0] activations_3_addr_reg_364_pp0_iter8_reg;
reg   [2:0] activations_3_addr_reg_364_pp0_iter9_reg;
reg   [2:0] activations_4_addr_reg_370;
reg   [2:0] activations_4_addr_reg_370_pp0_iter1_reg;
reg   [2:0] activations_4_addr_reg_370_pp0_iter2_reg;
reg   [2:0] activations_4_addr_reg_370_pp0_iter3_reg;
reg   [2:0] activations_4_addr_reg_370_pp0_iter4_reg;
reg   [2:0] activations_4_addr_reg_370_pp0_iter5_reg;
reg   [2:0] activations_4_addr_reg_370_pp0_iter6_reg;
reg   [2:0] activations_4_addr_reg_370_pp0_iter7_reg;
reg   [2:0] activations_4_addr_reg_370_pp0_iter8_reg;
reg   [2:0] activations_4_addr_reg_370_pp0_iter9_reg;
reg   [2:0] activations_5_addr_reg_376;
reg   [2:0] activations_5_addr_reg_376_pp0_iter1_reg;
reg   [2:0] activations_5_addr_reg_376_pp0_iter2_reg;
reg   [2:0] activations_5_addr_reg_376_pp0_iter3_reg;
reg   [2:0] activations_5_addr_reg_376_pp0_iter4_reg;
reg   [2:0] activations_5_addr_reg_376_pp0_iter5_reg;
reg   [2:0] activations_5_addr_reg_376_pp0_iter6_reg;
reg   [2:0] activations_5_addr_reg_376_pp0_iter7_reg;
reg   [2:0] activations_5_addr_reg_376_pp0_iter8_reg;
reg   [2:0] activations_5_addr_reg_376_pp0_iter9_reg;
reg   [2:0] activations_6_addr_reg_382;
reg   [2:0] activations_6_addr_reg_382_pp0_iter1_reg;
reg   [2:0] activations_6_addr_reg_382_pp0_iter2_reg;
reg   [2:0] activations_6_addr_reg_382_pp0_iter3_reg;
reg   [2:0] activations_6_addr_reg_382_pp0_iter4_reg;
reg   [2:0] activations_6_addr_reg_382_pp0_iter5_reg;
reg   [2:0] activations_6_addr_reg_382_pp0_iter6_reg;
reg   [2:0] activations_6_addr_reg_382_pp0_iter7_reg;
reg   [2:0] activations_6_addr_reg_382_pp0_iter8_reg;
reg   [2:0] activations_6_addr_reg_382_pp0_iter9_reg;
reg   [2:0] activations_7_addr_reg_388;
reg   [2:0] activations_7_addr_reg_388_pp0_iter1_reg;
reg   [2:0] activations_7_addr_reg_388_pp0_iter2_reg;
reg   [2:0] activations_7_addr_reg_388_pp0_iter3_reg;
reg   [2:0] activations_7_addr_reg_388_pp0_iter4_reg;
reg   [2:0] activations_7_addr_reg_388_pp0_iter5_reg;
reg   [2:0] activations_7_addr_reg_388_pp0_iter6_reg;
reg   [2:0] activations_7_addr_reg_388_pp0_iter7_reg;
reg   [2:0] activations_7_addr_reg_388_pp0_iter8_reg;
reg   [2:0] activations_7_addr_reg_388_pp0_iter9_reg;
wire   [63:0] tmp_fu_287_p19;
reg   [63:0] tmp_reg_399;
reg   [63:0] biases2_load_reg_404;
wire   [63:0] bitcast_ln27_fu_326_p1;
reg   [63:0] add_i_reg_414;
wire   [63:0] zext_ln25_fu_270_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln26_fu_251_p1;
reg   [6:0] i_fu_74;
wire   [6:0] add_ln26_fu_245_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_7;
reg    activations_0_ce1_local;
reg    activations_0_we0_local;
reg    activations_0_ce0_local;
reg    activations_1_ce1_local;
reg    activations_1_we0_local;
reg    activations_1_ce0_local;
reg    activations_2_ce1_local;
reg    activations_2_we0_local;
reg    activations_2_ce0_local;
reg    activations_3_ce1_local;
reg    activations_3_we0_local;
reg    activations_3_ce0_local;
reg    activations_4_ce1_local;
reg    activations_4_we0_local;
reg    activations_4_ce0_local;
reg    activations_5_ce1_local;
reg    activations_5_we0_local;
reg    activations_5_ce0_local;
reg    activations_6_ce1_local;
reg    activations_6_we0_local;
reg    activations_6_ce0_local;
reg    activations_7_ce1_local;
reg    activations_7_we0_local;
reg    activations_7_ce0_local;
reg    biases2_ce0_local;
wire   [2:0] lshr_ln4_fu_260_p4;
wire   [63:0] tmp_fu_287_p17;
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
wire   [2:0] tmp_fu_287_p1;
wire   [2:0] tmp_fu_287_p3;
wire   [2:0] tmp_fu_287_p5;
wire   [2:0] tmp_fu_287_p7;
wire  signed [2:0] tmp_fu_287_p9;
wire  signed [2:0] tmp_fu_287_p11;
wire  signed [2:0] tmp_fu_287_p13;
wire  signed [2:0] tmp_fu_287_p15;
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
#0 i_fu_74 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U54(.din0(activations_0_q1),.din1(activations_1_q1),.din2(activations_2_q1),.din3(activations_3_q1),.din4(activations_4_q1),.din5(activations_5_q1),.din6(activations_6_q1),.din7(activations_7_q1),.def(tmp_fu_287_p17),.sel(trunc_ln26_reg_341),.dout(tmp_fu_287_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        if (((icmp_ln26_fu_239_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_74 <= add_ln26_fu_245_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_74 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations_0_addr_reg_346 <= zext_ln25_fu_270_p1;
        activations_0_addr_reg_346_pp0_iter1_reg <= activations_0_addr_reg_346;
        activations_1_addr_reg_352 <= zext_ln25_fu_270_p1;
        activations_1_addr_reg_352_pp0_iter1_reg <= activations_1_addr_reg_352;
        activations_2_addr_reg_358 <= zext_ln25_fu_270_p1;
        activations_2_addr_reg_358_pp0_iter1_reg <= activations_2_addr_reg_358;
        activations_3_addr_reg_364 <= zext_ln25_fu_270_p1;
        activations_3_addr_reg_364_pp0_iter1_reg <= activations_3_addr_reg_364;
        activations_4_addr_reg_370 <= zext_ln25_fu_270_p1;
        activations_4_addr_reg_370_pp0_iter1_reg <= activations_4_addr_reg_370;
        activations_5_addr_reg_376 <= zext_ln25_fu_270_p1;
        activations_5_addr_reg_376_pp0_iter1_reg <= activations_5_addr_reg_376;
        activations_6_addr_reg_382 <= zext_ln25_fu_270_p1;
        activations_6_addr_reg_382_pp0_iter1_reg <= activations_6_addr_reg_382;
        activations_7_addr_reg_388 <= zext_ln25_fu_270_p1;
        activations_7_addr_reg_388_pp0_iter1_reg <= activations_7_addr_reg_388;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        biases2_load_reg_404 <= biases2_q0;
        tmp_reg_399 <= tmp_fu_287_p19;
        trunc_ln26_reg_341 <= trunc_ln26_fu_256_p1;
        trunc_ln26_reg_341_pp0_iter1_reg <= trunc_ln26_reg_341;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        activations_0_addr_reg_346_pp0_iter2_reg <= activations_0_addr_reg_346_pp0_iter1_reg;
        activations_0_addr_reg_346_pp0_iter3_reg <= activations_0_addr_reg_346_pp0_iter2_reg;
        activations_0_addr_reg_346_pp0_iter4_reg <= activations_0_addr_reg_346_pp0_iter3_reg;
        activations_0_addr_reg_346_pp0_iter5_reg <= activations_0_addr_reg_346_pp0_iter4_reg;
        activations_0_addr_reg_346_pp0_iter6_reg <= activations_0_addr_reg_346_pp0_iter5_reg;
        activations_0_addr_reg_346_pp0_iter7_reg <= activations_0_addr_reg_346_pp0_iter6_reg;
        activations_0_addr_reg_346_pp0_iter8_reg <= activations_0_addr_reg_346_pp0_iter7_reg;
        activations_0_addr_reg_346_pp0_iter9_reg <= activations_0_addr_reg_346_pp0_iter8_reg;
        activations_1_addr_reg_352_pp0_iter2_reg <= activations_1_addr_reg_352_pp0_iter1_reg;
        activations_1_addr_reg_352_pp0_iter3_reg <= activations_1_addr_reg_352_pp0_iter2_reg;
        activations_1_addr_reg_352_pp0_iter4_reg <= activations_1_addr_reg_352_pp0_iter3_reg;
        activations_1_addr_reg_352_pp0_iter5_reg <= activations_1_addr_reg_352_pp0_iter4_reg;
        activations_1_addr_reg_352_pp0_iter6_reg <= activations_1_addr_reg_352_pp0_iter5_reg;
        activations_1_addr_reg_352_pp0_iter7_reg <= activations_1_addr_reg_352_pp0_iter6_reg;
        activations_1_addr_reg_352_pp0_iter8_reg <= activations_1_addr_reg_352_pp0_iter7_reg;
        activations_1_addr_reg_352_pp0_iter9_reg <= activations_1_addr_reg_352_pp0_iter8_reg;
        activations_2_addr_reg_358_pp0_iter2_reg <= activations_2_addr_reg_358_pp0_iter1_reg;
        activations_2_addr_reg_358_pp0_iter3_reg <= activations_2_addr_reg_358_pp0_iter2_reg;
        activations_2_addr_reg_358_pp0_iter4_reg <= activations_2_addr_reg_358_pp0_iter3_reg;
        activations_2_addr_reg_358_pp0_iter5_reg <= activations_2_addr_reg_358_pp0_iter4_reg;
        activations_2_addr_reg_358_pp0_iter6_reg <= activations_2_addr_reg_358_pp0_iter5_reg;
        activations_2_addr_reg_358_pp0_iter7_reg <= activations_2_addr_reg_358_pp0_iter6_reg;
        activations_2_addr_reg_358_pp0_iter8_reg <= activations_2_addr_reg_358_pp0_iter7_reg;
        activations_2_addr_reg_358_pp0_iter9_reg <= activations_2_addr_reg_358_pp0_iter8_reg;
        activations_3_addr_reg_364_pp0_iter2_reg <= activations_3_addr_reg_364_pp0_iter1_reg;
        activations_3_addr_reg_364_pp0_iter3_reg <= activations_3_addr_reg_364_pp0_iter2_reg;
        activations_3_addr_reg_364_pp0_iter4_reg <= activations_3_addr_reg_364_pp0_iter3_reg;
        activations_3_addr_reg_364_pp0_iter5_reg <= activations_3_addr_reg_364_pp0_iter4_reg;
        activations_3_addr_reg_364_pp0_iter6_reg <= activations_3_addr_reg_364_pp0_iter5_reg;
        activations_3_addr_reg_364_pp0_iter7_reg <= activations_3_addr_reg_364_pp0_iter6_reg;
        activations_3_addr_reg_364_pp0_iter8_reg <= activations_3_addr_reg_364_pp0_iter7_reg;
        activations_3_addr_reg_364_pp0_iter9_reg <= activations_3_addr_reg_364_pp0_iter8_reg;
        activations_4_addr_reg_370_pp0_iter2_reg <= activations_4_addr_reg_370_pp0_iter1_reg;
        activations_4_addr_reg_370_pp0_iter3_reg <= activations_4_addr_reg_370_pp0_iter2_reg;
        activations_4_addr_reg_370_pp0_iter4_reg <= activations_4_addr_reg_370_pp0_iter3_reg;
        activations_4_addr_reg_370_pp0_iter5_reg <= activations_4_addr_reg_370_pp0_iter4_reg;
        activations_4_addr_reg_370_pp0_iter6_reg <= activations_4_addr_reg_370_pp0_iter5_reg;
        activations_4_addr_reg_370_pp0_iter7_reg <= activations_4_addr_reg_370_pp0_iter6_reg;
        activations_4_addr_reg_370_pp0_iter8_reg <= activations_4_addr_reg_370_pp0_iter7_reg;
        activations_4_addr_reg_370_pp0_iter9_reg <= activations_4_addr_reg_370_pp0_iter8_reg;
        activations_5_addr_reg_376_pp0_iter2_reg <= activations_5_addr_reg_376_pp0_iter1_reg;
        activations_5_addr_reg_376_pp0_iter3_reg <= activations_5_addr_reg_376_pp0_iter2_reg;
        activations_5_addr_reg_376_pp0_iter4_reg <= activations_5_addr_reg_376_pp0_iter3_reg;
        activations_5_addr_reg_376_pp0_iter5_reg <= activations_5_addr_reg_376_pp0_iter4_reg;
        activations_5_addr_reg_376_pp0_iter6_reg <= activations_5_addr_reg_376_pp0_iter5_reg;
        activations_5_addr_reg_376_pp0_iter7_reg <= activations_5_addr_reg_376_pp0_iter6_reg;
        activations_5_addr_reg_376_pp0_iter8_reg <= activations_5_addr_reg_376_pp0_iter7_reg;
        activations_5_addr_reg_376_pp0_iter9_reg <= activations_5_addr_reg_376_pp0_iter8_reg;
        activations_6_addr_reg_382_pp0_iter2_reg <= activations_6_addr_reg_382_pp0_iter1_reg;
        activations_6_addr_reg_382_pp0_iter3_reg <= activations_6_addr_reg_382_pp0_iter2_reg;
        activations_6_addr_reg_382_pp0_iter4_reg <= activations_6_addr_reg_382_pp0_iter3_reg;
        activations_6_addr_reg_382_pp0_iter5_reg <= activations_6_addr_reg_382_pp0_iter4_reg;
        activations_6_addr_reg_382_pp0_iter6_reg <= activations_6_addr_reg_382_pp0_iter5_reg;
        activations_6_addr_reg_382_pp0_iter7_reg <= activations_6_addr_reg_382_pp0_iter6_reg;
        activations_6_addr_reg_382_pp0_iter8_reg <= activations_6_addr_reg_382_pp0_iter7_reg;
        activations_6_addr_reg_382_pp0_iter9_reg <= activations_6_addr_reg_382_pp0_iter8_reg;
        activations_7_addr_reg_388_pp0_iter2_reg <= activations_7_addr_reg_388_pp0_iter1_reg;
        activations_7_addr_reg_388_pp0_iter3_reg <= activations_7_addr_reg_388_pp0_iter2_reg;
        activations_7_addr_reg_388_pp0_iter4_reg <= activations_7_addr_reg_388_pp0_iter3_reg;
        activations_7_addr_reg_388_pp0_iter5_reg <= activations_7_addr_reg_388_pp0_iter4_reg;
        activations_7_addr_reg_388_pp0_iter6_reg <= activations_7_addr_reg_388_pp0_iter5_reg;
        activations_7_addr_reg_388_pp0_iter7_reg <= activations_7_addr_reg_388_pp0_iter6_reg;
        activations_7_addr_reg_388_pp0_iter8_reg <= activations_7_addr_reg_388_pp0_iter7_reg;
        activations_7_addr_reg_388_pp0_iter9_reg <= activations_7_addr_reg_388_pp0_iter8_reg;
        add_i_reg_414 <= grp_fu_82_p_dout0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        trunc_ln26_reg_341_pp0_iter2_reg <= trunc_ln26_reg_341_pp0_iter1_reg;
        trunc_ln26_reg_341_pp0_iter3_reg <= trunc_ln26_reg_341_pp0_iter2_reg;
        trunc_ln26_reg_341_pp0_iter4_reg <= trunc_ln26_reg_341_pp0_iter3_reg;
        trunc_ln26_reg_341_pp0_iter5_reg <= trunc_ln26_reg_341_pp0_iter4_reg;
        trunc_ln26_reg_341_pp0_iter6_reg <= trunc_ln26_reg_341_pp0_iter5_reg;
        trunc_ln26_reg_341_pp0_iter7_reg <= trunc_ln26_reg_341_pp0_iter6_reg;
        trunc_ln26_reg_341_pp0_iter8_reg <= trunc_ln26_reg_341_pp0_iter7_reg;
        trunc_ln26_reg_341_pp0_iter9_reg <= trunc_ln26_reg_341_pp0_iter8_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations_0_ce0_local = 1'b1;
    end else begin
        activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations_0_ce1_local = 1'b1;
    end else begin
        activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_341_pp0_iter9_reg == 3'd0))) begin
        activations_0_we0_local = 1'b1;
    end else begin
        activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations_1_ce0_local = 1'b1;
    end else begin
        activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations_1_ce1_local = 1'b1;
    end else begin
        activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_341_pp0_iter9_reg == 3'd1))) begin
        activations_1_we0_local = 1'b1;
    end else begin
        activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations_2_ce0_local = 1'b1;
    end else begin
        activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations_2_ce1_local = 1'b1;
    end else begin
        activations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_341_pp0_iter9_reg == 3'd2))) begin
        activations_2_we0_local = 1'b1;
    end else begin
        activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations_3_ce0_local = 1'b1;
    end else begin
        activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations_3_ce1_local = 1'b1;
    end else begin
        activations_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_341_pp0_iter9_reg == 3'd3))) begin
        activations_3_we0_local = 1'b1;
    end else begin
        activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations_4_ce0_local = 1'b1;
    end else begin
        activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations_4_ce1_local = 1'b1;
    end else begin
        activations_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_341_pp0_iter9_reg == 3'd4))) begin
        activations_4_we0_local = 1'b1;
    end else begin
        activations_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations_5_ce0_local = 1'b1;
    end else begin
        activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations_5_ce1_local = 1'b1;
    end else begin
        activations_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_341_pp0_iter9_reg == 3'd5))) begin
        activations_5_we0_local = 1'b1;
    end else begin
        activations_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations_6_ce0_local = 1'b1;
    end else begin
        activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations_6_ce1_local = 1'b1;
    end else begin
        activations_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_341_pp0_iter9_reg == 3'd6))) begin
        activations_6_we0_local = 1'b1;
    end else begin
        activations_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations_7_ce0_local = 1'b1;
    end else begin
        activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations_7_ce1_local = 1'b1;
    end else begin
        activations_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_341_pp0_iter9_reg == 3'd7))) begin
        activations_7_we0_local = 1'b1;
    end else begin
        activations_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_239_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_ce0_local = 1'b1;
    end else begin
        biases2_ce0_local = 1'b0;
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
assign activations_0_address0 = activations_0_addr_reg_346_pp0_iter9_reg;
assign activations_0_address1 = zext_ln25_fu_270_p1;
assign activations_0_ce0 = activations_0_ce0_local;
assign activations_0_ce1 = activations_0_ce1_local;
assign activations_0_d0 = add_i_reg_414;
assign activations_0_we0 = activations_0_we0_local;
assign activations_1_address0 = activations_1_addr_reg_352_pp0_iter9_reg;
assign activations_1_address1 = zext_ln25_fu_270_p1;
assign activations_1_ce0 = activations_1_ce0_local;
assign activations_1_ce1 = activations_1_ce1_local;
assign activations_1_d0 = add_i_reg_414;
assign activations_1_we0 = activations_1_we0_local;
assign activations_2_address0 = activations_2_addr_reg_358_pp0_iter9_reg;
assign activations_2_address1 = zext_ln25_fu_270_p1;
assign activations_2_ce0 = activations_2_ce0_local;
assign activations_2_ce1 = activations_2_ce1_local;
assign activations_2_d0 = add_i_reg_414;
assign activations_2_we0 = activations_2_we0_local;
assign activations_3_address0 = activations_3_addr_reg_364_pp0_iter9_reg;
assign activations_3_address1 = zext_ln25_fu_270_p1;
assign activations_3_ce0 = activations_3_ce0_local;
assign activations_3_ce1 = activations_3_ce1_local;
assign activations_3_d0 = add_i_reg_414;
assign activations_3_we0 = activations_3_we0_local;
assign activations_4_address0 = activations_4_addr_reg_370_pp0_iter9_reg;
assign activations_4_address1 = zext_ln25_fu_270_p1;
assign activations_4_ce0 = activations_4_ce0_local;
assign activations_4_ce1 = activations_4_ce1_local;
assign activations_4_d0 = add_i_reg_414;
assign activations_4_we0 = activations_4_we0_local;
assign activations_5_address0 = activations_5_addr_reg_376_pp0_iter9_reg;
assign activations_5_address1 = zext_ln25_fu_270_p1;
assign activations_5_ce0 = activations_5_ce0_local;
assign activations_5_ce1 = activations_5_ce1_local;
assign activations_5_d0 = add_i_reg_414;
assign activations_5_we0 = activations_5_we0_local;
assign activations_6_address0 = activations_6_addr_reg_382_pp0_iter9_reg;
assign activations_6_address1 = zext_ln25_fu_270_p1;
assign activations_6_ce0 = activations_6_ce0_local;
assign activations_6_ce1 = activations_6_ce1_local;
assign activations_6_d0 = add_i_reg_414;
assign activations_6_we0 = activations_6_we0_local;
assign activations_7_address0 = activations_7_addr_reg_388_pp0_iter9_reg;
assign activations_7_address1 = zext_ln25_fu_270_p1;
assign activations_7_ce0 = activations_7_ce0_local;
assign activations_7_ce1 = activations_7_ce1_local;
assign activations_7_d0 = add_i_reg_414;
assign activations_7_we0 = activations_7_we0_local;
assign add_ln26_fu_245_p2 = (ap_sig_allocacmp_i_7 + 7'd1);
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
assign biases2_address0 = zext_ln26_fu_251_p1;
assign biases2_ce0 = biases2_ce0_local;
assign bitcast_ln27_fu_326_p1 = biases2_load_reg_404;
assign grp_fu_82_p_ce = 1'b1;
assign grp_fu_82_p_din0 = tmp_reg_399;
assign grp_fu_82_p_din1 = bitcast_ln27_fu_326_p1;
assign grp_fu_82_p_opcode = 2'd0;
assign icmp_ln26_fu_239_p2 = ((ap_sig_allocacmp_i_7 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln4_fu_260_p4 = {{ap_sig_allocacmp_i_7[5:3]}};
assign tmp_fu_287_p17 = 'bx;
assign trunc_ln26_fu_256_p1 = ap_sig_allocacmp_i_7[2:0];
assign zext_ln25_fu_270_p1 = lshr_ln4_fu_260_p4;
assign zext_ln26_fu_251_p1 = ap_sig_allocacmp_i_7;
endmodule 