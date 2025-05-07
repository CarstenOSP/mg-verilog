module backprop_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations2_address0,activations2_ce0,activations2_q0,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,mux_case_04172_reload,mux_case_14277_reload,mux_case_24382_reload,grp_fu_6808_p_din0,grp_fu_6808_p_din1,grp_fu_6808_p_dout0,grp_fu_6808_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [3:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [3:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [3:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [5:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [5:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [5:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [5:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
input  [63:0] mux_case_04172_reload;
input  [63:0] mux_case_14277_reload;
input  [63:0] mux_case_24382_reload;
output  [63:0] grp_fu_6808_p_din0;
output  [63:0] grp_fu_6808_p_din1;
input  [63:0] grp_fu_6808_p_dout0;
output   grp_fu_6808_p_ce;
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
wire   [0:0] icmp_ln73_fu_236_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] select_ln72_fu_265_p3;
reg   [1:0] select_ln72_reg_457;
wire   [1:0] trunc_ln73_fu_291_p1;
reg   [1:0] trunc_ln73_reg_462;
wire   [1:0] trunc_ln75_fu_341_p1;
reg   [1:0] trunc_ln75_reg_487;
reg   [1:0] trunc_ln75_reg_487_pp0_iter2_reg;
reg   [1:0] trunc_ln75_reg_487_pp0_iter3_reg;
reg   [1:0] trunc_ln75_reg_487_pp0_iter4_reg;
reg   [1:0] trunc_ln75_reg_487_pp0_iter5_reg;
reg   [1:0] trunc_ln75_reg_487_pp0_iter6_reg;
reg   [1:0] trunc_ln75_reg_487_pp0_iter7_reg;
reg   [1:0] trunc_ln75_reg_487_pp0_iter8_reg;
reg   [1:0] trunc_ln75_reg_487_pp0_iter9_reg;
reg   [5:0] lshr_ln1_reg_491;
reg   [5:0] lshr_ln1_reg_491_pp0_iter2_reg;
reg   [5:0] lshr_ln1_reg_491_pp0_iter3_reg;
reg   [5:0] lshr_ln1_reg_491_pp0_iter4_reg;
reg   [5:0] lshr_ln1_reg_491_pp0_iter5_reg;
reg   [5:0] lshr_ln1_reg_491_pp0_iter6_reg;
reg   [5:0] lshr_ln1_reg_491_pp0_iter7_reg;
reg   [5:0] lshr_ln1_reg_491_pp0_iter8_reg;
reg   [5:0] lshr_ln1_reg_491_pp0_iter9_reg;
wire   [63:0] tmp_s_fu_371_p11;
reg   [63:0] tmp_s_reg_496;
wire   [63:0] tmp_15_fu_394_p9;
reg   [63:0] tmp_15_reg_501;
reg   [63:0] mul_i3_reg_506;
wire   [63:0] zext_ln72_fu_305_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_410_p1;
reg   [1:0] j_fu_80;
wire   [1:0] add_ln74_fu_355_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_84;
wire   [6:0] select_ln73_fu_279_p3;
reg   [7:0] indvar_flatten_fu_88;
wire   [7:0] add_ln73_fu_242_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    activations2_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_3_ce0_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg    delta_weights3_we0_local;
reg    delta_weights3_ce0_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
wire   [0:0] icmp_ln74_fu_259_p2;
wire   [6:0] add_ln73_1_fu_273_p2;
wire   [3:0] lshr_ln_fu_295_p4;
wire   [5:0] trunc_ln74_fu_313_p1;
wire   [7:0] p_shl_fu_317_p3;
wire   [7:0] zext_ln74_fu_287_p1;
wire   [7:0] zext_ln74_1_fu_331_p1;
wire   [7:0] sub_ln74_fu_325_p2;
wire   [7:0] add_ln75_fu_335_p2;
wire   [63:0] tmp_s_fu_371_p9;
wire   [63:0] tmp_15_fu_394_p7;
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
wire   [1:0] tmp_s_fu_371_p1;
wire   [1:0] tmp_s_fu_371_p3;
wire  signed [1:0] tmp_s_fu_371_p5;
wire  signed [1:0] tmp_s_fu_371_p7;
wire   [1:0] tmp_15_fu_394_p1;
wire   [1:0] tmp_15_fu_394_p3;
wire  signed [1:0] tmp_15_fu_394_p5;
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
#0 j_fu_80 = 2'd0;
#0 i_fu_84 = 7'd0;
#0 indvar_flatten_fu_88 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U352(.din0(activations2_q0),.din1(activations2_1_q0),.din2(activations2_2_q0),.din3(activations2_3_q0),.def(tmp_s_fu_371_p9),.sel(trunc_ln73_reg_462),.dout(tmp_s_fu_371_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U353(.din0(mux_case_04172_reload),.din1(mux_case_14277_reload),.din2(mux_case_24382_reload),.def(tmp_15_fu_394_p7),.sel(select_ln72_reg_457),.dout(tmp_15_fu_394_p9));
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
        if ((ap_loop_init == 1'b1)) begin
            i_fu_84 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_84 <= select_ln73_fu_279_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln73_fu_236_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_88 <= add_ln73_fu_242_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_88 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_80 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_80 <= add_ln74_fu_355_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln1_reg_491 <= {{add_ln75_fu_335_p2[7:2]}};
        select_ln72_reg_457 <= select_ln72_fu_265_p3;
        trunc_ln73_reg_462 <= trunc_ln73_fu_291_p1;
        trunc_ln75_reg_487 <= trunc_ln75_fu_341_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln1_reg_491_pp0_iter2_reg <= lshr_ln1_reg_491;
        lshr_ln1_reg_491_pp0_iter3_reg <= lshr_ln1_reg_491_pp0_iter2_reg;
        lshr_ln1_reg_491_pp0_iter4_reg <= lshr_ln1_reg_491_pp0_iter3_reg;
        lshr_ln1_reg_491_pp0_iter5_reg <= lshr_ln1_reg_491_pp0_iter4_reg;
        lshr_ln1_reg_491_pp0_iter6_reg <= lshr_ln1_reg_491_pp0_iter5_reg;
        lshr_ln1_reg_491_pp0_iter7_reg <= lshr_ln1_reg_491_pp0_iter6_reg;
        lshr_ln1_reg_491_pp0_iter8_reg <= lshr_ln1_reg_491_pp0_iter7_reg;
        lshr_ln1_reg_491_pp0_iter9_reg <= lshr_ln1_reg_491_pp0_iter8_reg;
        mul_i3_reg_506 <= grp_fu_6808_p_dout0;
        tmp_15_reg_501 <= tmp_15_fu_394_p9;
        tmp_s_reg_496 <= tmp_s_fu_371_p11;
        trunc_ln75_reg_487_pp0_iter2_reg <= trunc_ln75_reg_487;
        trunc_ln75_reg_487_pp0_iter3_reg <= trunc_ln75_reg_487_pp0_iter2_reg;
        trunc_ln75_reg_487_pp0_iter4_reg <= trunc_ln75_reg_487_pp0_iter3_reg;
        trunc_ln75_reg_487_pp0_iter5_reg <= trunc_ln75_reg_487_pp0_iter4_reg;
        trunc_ln75_reg_487_pp0_iter6_reg <= trunc_ln75_reg_487_pp0_iter5_reg;
        trunc_ln75_reg_487_pp0_iter7_reg <= trunc_ln75_reg_487_pp0_iter6_reg;
        trunc_ln75_reg_487_pp0_iter8_reg <= trunc_ln75_reg_487_pp0_iter7_reg;
        trunc_ln75_reg_487_pp0_iter9_reg <= trunc_ln75_reg_487_pp0_iter8_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln73_fu_236_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_487_pp0_iter9_reg == 2'd1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_487_pp0_iter9_reg == 2'd2))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_487_pp0_iter9_reg == 2'd3))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_ce0_local = 1'b1;
    end else begin
        delta_weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_487_pp0_iter9_reg == 2'd0))) begin
        delta_weights3_we0_local = 1'b1;
    end else begin
        delta_weights3_we0_local = 1'b0;
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
assign activations2_1_address0 = zext_ln72_fu_305_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_2_address0 = zext_ln72_fu_305_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_3_address0 = zext_ln72_fu_305_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_address0 = zext_ln72_fu_305_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln73_1_fu_273_p2 = (i_fu_84 + 7'd1);
assign add_ln73_fu_242_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln74_fu_355_p2 = (select_ln72_fu_265_p3 + 2'd1);
assign add_ln75_fu_335_p2 = (zext_ln74_1_fu_331_p1 + sub_ln74_fu_325_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_1_address0 = zext_ln75_fu_410_p1;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = mul_i3_reg_506;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_2_address0 = zext_ln75_fu_410_p1;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_d0 = mul_i3_reg_506;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_3_address0 = zext_ln75_fu_410_p1;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = mul_i3_reg_506;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_address0 = zext_ln75_fu_410_p1;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_d0 = mul_i3_reg_506;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign grp_fu_6808_p_ce = 1'b1;
assign grp_fu_6808_p_din0 = tmp_s_reg_496;
assign grp_fu_6808_p_din1 = tmp_15_reg_501;
assign icmp_ln73_fu_236_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln74_fu_259_p2 = ((j_fu_80 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_fu_295_p4 = {{select_ln73_fu_279_p3[5:2]}};
assign p_shl_fu_317_p3 = {{trunc_ln74_fu_313_p1}, {2'd0}};
assign select_ln72_fu_265_p3 = ((icmp_ln74_fu_259_p2[0:0] == 1'b1) ? 2'd0 : j_fu_80);
assign select_ln73_fu_279_p3 = ((icmp_ln74_fu_259_p2[0:0] == 1'b1) ? add_ln73_1_fu_273_p2 : i_fu_84);
assign sub_ln74_fu_325_p2 = (p_shl_fu_317_p3 - zext_ln74_fu_287_p1);
assign tmp_15_fu_394_p7 = 'bx;
assign tmp_s_fu_371_p9 = 'bx;
assign trunc_ln73_fu_291_p1 = select_ln73_fu_279_p3[1:0];
assign trunc_ln74_fu_313_p1 = select_ln73_fu_279_p3[5:0];
assign trunc_ln75_fu_341_p1 = add_ln75_fu_335_p2[1:0];
assign zext_ln72_fu_305_p1 = lshr_ln_fu_295_p4;
assign zext_ln74_1_fu_331_p1 = select_ln72_fu_265_p3;
assign zext_ln74_fu_287_p1 = select_ln73_fu_279_p3;
assign zext_ln75_fu_410_p1 = lshr_ln1_reg_491_pp0_iter9_reg;
endmodule 