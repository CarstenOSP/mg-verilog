module backprop_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations2_address0,activations2_ce0,activations2_q0,mux_case_03162_reload,mux_case_13267_reload,mux_case_23372_reload,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,grp_fu_5353_p_din0,grp_fu_5353_p_din1,grp_fu_5353_p_dout0,grp_fu_5353_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
input  [63:0] mux_case_03162_reload;
input  [63:0] mux_case_13267_reload;
input  [63:0] mux_case_23372_reload;
output  [7:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
output  [63:0] grp_fu_5353_p_din0;
output  [63:0] grp_fu_5353_p_din1;
input  [63:0] grp_fu_5353_p_dout0;
output   grp_fu_5353_p_ce;
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
wire   [0:0] icmp_ln73_fu_134_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] select_ln72_fu_163_p3;
reg   [1:0] select_ln72_reg_298;
wire   [7:0] add_ln75_fu_216_p2;
reg   [7:0] add_ln75_reg_308;
reg   [7:0] add_ln75_reg_308_pp0_iter2_reg;
reg   [7:0] add_ln75_reg_308_pp0_iter3_reg;
reg   [7:0] add_ln75_reg_308_pp0_iter4_reg;
reg   [7:0] add_ln75_reg_308_pp0_iter5_reg;
reg   [7:0] add_ln75_reg_308_pp0_iter6_reg;
reg   [7:0] add_ln75_reg_308_pp0_iter7_reg;
reg   [7:0] add_ln75_reg_308_pp0_iter8_reg;
reg   [7:0] add_ln75_reg_308_pp0_iter9_reg;
reg   [63:0] activations2_load_reg_313;
wire   [63:0] tmp_s_fu_238_p9;
reg   [63:0] tmp_s_reg_318;
reg   [63:0] mul_i3_reg_323;
wire   [63:0] zext_ln73_fu_185_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_254_p1;
reg   [1:0] j_fu_56;
wire   [1:0] add_ln74_fu_222_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_60;
wire   [6:0] select_ln73_fu_177_p3;
reg   [7:0] indvar_flatten_fu_64;
wire   [7:0] add_ln73_fu_140_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    activations2_ce0_local;
reg    delta_weights3_we0_local;
reg    delta_weights3_ce0_local;
wire   [0:0] icmp_ln74_fu_157_p2;
wire   [6:0] add_ln73_1_fu_171_p2;
wire   [5:0] trunc_ln74_fu_194_p1;
wire   [7:0] p_shl_fu_198_p3;
wire   [7:0] zext_ln74_fu_190_p1;
wire   [7:0] zext_ln74_1_fu_212_p1;
wire   [7:0] sub_ln74_fu_206_p2;
wire   [63:0] tmp_s_fu_238_p7;
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
wire   [1:0] tmp_s_fu_238_p1;
wire   [1:0] tmp_s_fu_238_p3;
wire  signed [1:0] tmp_s_fu_238_p5;
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
#0 j_fu_56 = 2'd0;
#0 i_fu_60 = 7'd0;
#0 indvar_flatten_fu_64 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U252(.din0(mux_case_03162_reload),.din1(mux_case_13267_reload),.din2(mux_case_23372_reload),.def(tmp_s_fu_238_p7),.sel(select_ln72_reg_298),.dout(tmp_s_fu_238_p9));
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
            i_fu_60 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_60 <= select_ln73_fu_177_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln73_fu_134_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_64 <= add_ln73_fu_140_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_64 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_56 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_56 <= add_ln74_fu_222_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        activations2_load_reg_313 <= activations2_q0;
        add_ln75_reg_308_pp0_iter2_reg <= add_ln75_reg_308;
        add_ln75_reg_308_pp0_iter3_reg <= add_ln75_reg_308_pp0_iter2_reg;
        add_ln75_reg_308_pp0_iter4_reg <= add_ln75_reg_308_pp0_iter3_reg;
        add_ln75_reg_308_pp0_iter5_reg <= add_ln75_reg_308_pp0_iter4_reg;
        add_ln75_reg_308_pp0_iter6_reg <= add_ln75_reg_308_pp0_iter5_reg;
        add_ln75_reg_308_pp0_iter7_reg <= add_ln75_reg_308_pp0_iter6_reg;
        add_ln75_reg_308_pp0_iter8_reg <= add_ln75_reg_308_pp0_iter7_reg;
        add_ln75_reg_308_pp0_iter9_reg <= add_ln75_reg_308_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul_i3_reg_323 <= grp_fu_5353_p_dout0;
        tmp_s_reg_318 <= tmp_s_fu_238_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln75_reg_308 <= add_ln75_fu_216_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln72_reg_298 <= select_ln72_fu_163_p3;
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
    if (((icmp_ln73_fu_134_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_64;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
assign activations2_address0 = zext_ln73_fu_185_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln73_1_fu_171_p2 = (i_fu_60 + 7'd1);
assign add_ln73_fu_140_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln74_fu_222_p2 = (select_ln72_fu_163_p3 + 2'd1);
assign add_ln75_fu_216_p2 = (zext_ln74_1_fu_212_p1 + sub_ln74_fu_206_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_address0 = zext_ln75_fu_254_p1;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_d0 = mul_i3_reg_323;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign grp_fu_5353_p_ce = 1'b1;
assign grp_fu_5353_p_din0 = activations2_load_reg_313;
assign grp_fu_5353_p_din1 = tmp_s_reg_318;
assign icmp_ln73_fu_134_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln74_fu_157_p2 = ((j_fu_56 == 2'd3) ? 1'b1 : 1'b0);
assign p_shl_fu_198_p3 = {{trunc_ln74_fu_194_p1}, {2'd0}};
assign select_ln72_fu_163_p3 = ((icmp_ln74_fu_157_p2[0:0] == 1'b1) ? 2'd0 : j_fu_56);
assign select_ln73_fu_177_p3 = ((icmp_ln74_fu_157_p2[0:0] == 1'b1) ? add_ln73_1_fu_171_p2 : i_fu_60);
assign sub_ln74_fu_206_p2 = (p_shl_fu_198_p3 - zext_ln74_fu_190_p1);
assign tmp_s_fu_238_p7 = 'bx;
assign trunc_ln74_fu_194_p1 = select_ln73_fu_177_p3[5:0];
assign zext_ln73_fu_185_p1 = select_ln73_fu_177_p3;
assign zext_ln74_1_fu_212_p1 = select_ln72_fu_163_p3;
assign zext_ln74_fu_190_p1 = select_ln73_fu_177_p3;
assign zext_ln75_fu_254_p1 = add_ln75_reg_308_pp0_iter9_reg;
endmodule 