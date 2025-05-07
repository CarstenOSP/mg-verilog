module backprop_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations2_address0,activations2_ce0,activations2_q0,activations2_1_address0,activations2_1_ce0,activations2_1_q0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,mux_case_05283_reload,mux_case_15388_reload,mux_case_25493_reload,grp_fu_5761_p_din0,grp_fu_5761_p_din1,grp_fu_5761_p_dout0,grp_fu_5761_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [4:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [6:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [6:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
input  [63:0] mux_case_05283_reload;
input  [63:0] mux_case_15388_reload;
input  [63:0] mux_case_25493_reload;
output  [63:0] grp_fu_5761_p_din0;
output  [63:0] grp_fu_5761_p_din1;
input  [63:0] grp_fu_5761_p_dout0;
output   grp_fu_5761_p_ce;
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
wire   [0:0] icmp_ln73_fu_172_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] select_ln72_fu_201_p3;
reg   [1:0] select_ln72_reg_373;
wire   [0:0] trunc_ln73_fu_227_p1;
reg   [0:0] trunc_ln73_reg_378;
wire   [0:0] trunc_ln75_fu_275_p1;
reg   [0:0] trunc_ln75_reg_393;
reg   [0:0] trunc_ln75_reg_393_pp0_iter2_reg;
reg   [0:0] trunc_ln75_reg_393_pp0_iter3_reg;
reg   [0:0] trunc_ln75_reg_393_pp0_iter4_reg;
reg   [0:0] trunc_ln75_reg_393_pp0_iter5_reg;
reg   [0:0] trunc_ln75_reg_393_pp0_iter6_reg;
reg   [0:0] trunc_ln75_reg_393_pp0_iter7_reg;
reg   [0:0] trunc_ln75_reg_393_pp0_iter8_reg;
reg   [0:0] trunc_ln75_reg_393_pp0_iter9_reg;
reg   [6:0] lshr_ln7_reg_397;
reg   [6:0] lshr_ln7_reg_397_pp0_iter2_reg;
reg   [6:0] lshr_ln7_reg_397_pp0_iter3_reg;
reg   [6:0] lshr_ln7_reg_397_pp0_iter4_reg;
reg   [6:0] lshr_ln7_reg_397_pp0_iter5_reg;
reg   [6:0] lshr_ln7_reg_397_pp0_iter6_reg;
reg   [6:0] lshr_ln7_reg_397_pp0_iter7_reg;
reg   [6:0] lshr_ln7_reg_397_pp0_iter8_reg;
reg   [6:0] lshr_ln7_reg_397_pp0_iter9_reg;
wire   [63:0] tmp_43_fu_305_p3;
reg   [63:0] tmp_43_reg_402;
wire   [63:0] tmp_s_fu_312_p9;
reg   [63:0] tmp_s_reg_407;
reg   [63:0] mul_i3_reg_412;
wire   [63:0] zext_ln72_fu_241_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_328_p1;
reg   [1:0] j_fu_68;
wire   [1:0] add_ln74_fu_289_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_72;
wire   [6:0] select_ln73_fu_215_p3;
reg   [7:0] indvar_flatten_fu_76;
wire   [7:0] add_ln73_fu_178_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    activations2_ce0_local;
reg    activations2_1_ce0_local;
reg    delta_weights3_we0_local;
reg    delta_weights3_ce0_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
wire   [0:0] icmp_ln74_fu_195_p2;
wire   [6:0] add_ln73_1_fu_209_p2;
wire   [4:0] lshr_ln6_fu_231_p4;
wire   [5:0] trunc_ln74_fu_247_p1;
wire   [7:0] p_shl_fu_251_p3;
wire   [7:0] zext_ln74_fu_223_p1;
wire   [7:0] zext_ln74_1_fu_265_p1;
wire   [7:0] sub_ln74_fu_259_p2;
wire   [7:0] add_ln75_fu_269_p2;
wire   [63:0] tmp_s_fu_312_p7;
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
wire   [1:0] tmp_s_fu_312_p1;
wire   [1:0] tmp_s_fu_312_p3;
wire  signed [1:0] tmp_s_fu_312_p5;
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
#0 j_fu_68 = 2'd0;
#0 i_fu_72 = 7'd0;
#0 indvar_flatten_fu_76 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U278(.din0(mux_case_05283_reload),.din1(mux_case_15388_reload),.din2(mux_case_25493_reload),.def(tmp_s_fu_312_p7),.sel(select_ln72_reg_373),.dout(tmp_s_fu_312_p9));
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
            i_fu_72 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_72 <= select_ln73_fu_215_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln73_fu_172_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_76 <= add_ln73_fu_178_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_76 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_68 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_68 <= add_ln74_fu_289_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln7_reg_397 <= {{add_ln75_fu_269_p2[7:1]}};
        select_ln72_reg_373 <= select_ln72_fu_201_p3;
        trunc_ln73_reg_378 <= trunc_ln73_fu_227_p1;
        trunc_ln75_reg_393 <= trunc_ln75_fu_275_p1;
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
        lshr_ln7_reg_397_pp0_iter2_reg <= lshr_ln7_reg_397;
        lshr_ln7_reg_397_pp0_iter3_reg <= lshr_ln7_reg_397_pp0_iter2_reg;
        lshr_ln7_reg_397_pp0_iter4_reg <= lshr_ln7_reg_397_pp0_iter3_reg;
        lshr_ln7_reg_397_pp0_iter5_reg <= lshr_ln7_reg_397_pp0_iter4_reg;
        lshr_ln7_reg_397_pp0_iter6_reg <= lshr_ln7_reg_397_pp0_iter5_reg;
        lshr_ln7_reg_397_pp0_iter7_reg <= lshr_ln7_reg_397_pp0_iter6_reg;
        lshr_ln7_reg_397_pp0_iter8_reg <= lshr_ln7_reg_397_pp0_iter7_reg;
        lshr_ln7_reg_397_pp0_iter9_reg <= lshr_ln7_reg_397_pp0_iter8_reg;
        mul_i3_reg_412 <= grp_fu_5761_p_dout0;
        tmp_43_reg_402 <= tmp_43_fu_305_p3;
        tmp_s_reg_407 <= tmp_s_fu_312_p9;
        trunc_ln75_reg_393_pp0_iter2_reg <= trunc_ln75_reg_393;
        trunc_ln75_reg_393_pp0_iter3_reg <= trunc_ln75_reg_393_pp0_iter2_reg;
        trunc_ln75_reg_393_pp0_iter4_reg <= trunc_ln75_reg_393_pp0_iter3_reg;
        trunc_ln75_reg_393_pp0_iter5_reg <= trunc_ln75_reg_393_pp0_iter4_reg;
        trunc_ln75_reg_393_pp0_iter6_reg <= trunc_ln75_reg_393_pp0_iter5_reg;
        trunc_ln75_reg_393_pp0_iter7_reg <= trunc_ln75_reg_393_pp0_iter6_reg;
        trunc_ln75_reg_393_pp0_iter8_reg <= trunc_ln75_reg_393_pp0_iter7_reg;
        trunc_ln75_reg_393_pp0_iter9_reg <= trunc_ln75_reg_393_pp0_iter8_reg;
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
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln73_fu_172_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_76;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_393_pp0_iter9_reg == 1'd1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_393_pp0_iter9_reg == 1'd0))) begin
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
assign activations2_1_address0 = zext_ln72_fu_241_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_address0 = zext_ln72_fu_241_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln73_1_fu_209_p2 = (i_fu_72 + 7'd1);
assign add_ln73_fu_178_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln74_fu_289_p2 = (select_ln72_fu_201_p3 + 2'd1);
assign add_ln75_fu_269_p2 = (zext_ln74_1_fu_265_p1 + sub_ln74_fu_259_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_1_address0 = zext_ln75_fu_328_p1;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = mul_i3_reg_412;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_address0 = zext_ln75_fu_328_p1;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_d0 = mul_i3_reg_412;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign grp_fu_5761_p_ce = 1'b1;
assign grp_fu_5761_p_din0 = tmp_43_reg_402;
assign grp_fu_5761_p_din1 = tmp_s_reg_407;
assign icmp_ln73_fu_172_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln74_fu_195_p2 = ((j_fu_68 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_231_p4 = {{select_ln73_fu_215_p3[5:1]}};
assign p_shl_fu_251_p3 = {{trunc_ln74_fu_247_p1}, {2'd0}};
assign select_ln72_fu_201_p3 = ((icmp_ln74_fu_195_p2[0:0] == 1'b1) ? 2'd0 : j_fu_68);
assign select_ln73_fu_215_p3 = ((icmp_ln74_fu_195_p2[0:0] == 1'b1) ? add_ln73_1_fu_209_p2 : i_fu_72);
assign sub_ln74_fu_259_p2 = (p_shl_fu_251_p3 - zext_ln74_fu_223_p1);
assign tmp_43_fu_305_p3 = ((trunc_ln73_reg_378[0:0] == 1'b1) ? activations2_1_q0 : activations2_q0);
assign tmp_s_fu_312_p7 = 'bx;
assign trunc_ln73_fu_227_p1 = select_ln73_fu_215_p3[0:0];
assign trunc_ln74_fu_247_p1 = select_ln73_fu_215_p3[5:0];
assign trunc_ln75_fu_275_p1 = add_ln75_fu_269_p2[0:0];
assign zext_ln72_fu_241_p1 = lshr_ln6_fu_231_p4;
assign zext_ln74_1_fu_265_p1 = select_ln72_fu_201_p3;
assign zext_ln74_fu_223_p1 = select_ln73_fu_215_p3;
assign zext_ln75_fu_328_p1 = lshr_ln7_reg_397_pp0_iter9_reg;
endmodule 